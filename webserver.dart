
import 'dart:io';

// Config padrão
const String targetHost = '127.0.0.1';
const int targetPort = 5000;
const int listenPort = 8000;

final Set<String> hopByHopHeaders = {
  'connection',
  'keep-alive',
  'proxy-authenticate',
  'proxy-authorization',
  'te',
  'trailers',
  'transfer-encoding',
  'upgrade',
};

Future<void> main(List<String> args) async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, listenPort);
  print('COI Dart proxy listening on http://localhost:$listenPort');
  print('Forwarding to http://$targetHost:$targetPort');

  final client = HttpClient();

  await for (HttpRequest clientReq in server) {
    _handleRequest(clientReq, client);
  }
}

Future<void> _handleRequest(HttpRequest clientReq, HttpClient client) async {
  try {
    final uri = Uri(
      scheme: 'http',
      host: targetHost,
      port: targetPort,
      path: clientReq.uri.path,
      query: clientReq.uri.query,
    );

    // Cria request pro dev-server do Flutter
    final serverReq = await client.openUrl(clientReq.method, uri);

    // Copia headers da requisição original
    clientReq.headers.forEach((name, values) {
      final lower = name.toLowerCase();
      if (lower == 'host' || hopByHopHeaders.contains(lower)) return;
      for (final value in values) {
        serverReq.headers.add(name, value);
      }
    });
    serverReq.headers.set('Host', '$targetHost:$targetPort');

    // 🔁 Encaminha corpo da request (sem usar pipe)
    // HttpRequest é Stream<List<int>>; HttpClientRequest tem addStream(...)
    await serverReq.addStream(clientReq);
    await serverReq.close();

    // Resposta do dev server
    final serverResp = await serverReq.close();

    // Status code
    clientReq.response.statusCode = serverResp.statusCode;
    clientReq.response.reasonPhrase = serverResp.reasonPhrase;

    // Copia headers da resposta original
    serverResp.headers.forEach((name, values) {
      final lower = name.toLowerCase();
      if (hopByHopHeaders.contains(lower) || lower == 'content-length') return;
      for (final value in values) {
        clientReq.response.headers.add(name, value);
      }
    });

    // Injeta COOP/COEP/CORP
    clientReq.response.headers.set('Cross-Origin-Opener-Policy', 'same-origin');
    clientReq.response.headers.set('Cross-Origin-Embedder-Policy', 'require-corp');
    clientReq.response.headers.set('Cross-Origin-Resource-Policy', 'same-origin');

    // 🔁 Encaminha corpo da resposta (sem usar pipe por causa de Uint8List/List<int>)
    await for (final chunk in serverResp) {
      clientReq.response.add(chunk);
    }

    await clientReq.response.close();
  } catch (e, st) {
    print('Error proxying request: $e');
    print(st);
    // Sem headersSent: só tentamos setar e fechar, ignorando erros
    try {
      clientReq.response.statusCode = HttpStatus.internalServerError;
    } catch (_) {}
    try {
      await clientReq.response.close();
    } catch (_) {}
  }
}
