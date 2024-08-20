import 'package:isar/isar.dart';
part 'downloader_task_collection.g.dart';

@collection
class DownloaderTaskCollection {
  @id
  late int mediaId;
  String? tag;
  String? url;
  String? status;
  String? type;
  String? filename;
  double? progress;
  String? uriData;
}
