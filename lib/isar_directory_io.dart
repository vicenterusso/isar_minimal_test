import 'package:path_provider/path_provider.dart';

Future<String> resolveIsarDirectory(String _) async {
  final dir = await getApplicationDocumentsDirectory();
  return dir.path;
}
