import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_minimal_test/downloader_task_collection.dart';
import 'package:isar_minimal_test/user.dart';
import 'package:path_provider/path_provider.dart';

Isar? isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    if (kIsWeb) {
      await Isar.initialize();
      isar = Isar.open(
        name: 'isar_minimimal_test',
        schemas: [
          UserSchema,
          DownloaderTaskCollectionSchema,
        ],
        directory: Isar.sqliteInMemory,
        engine: IsarEngine.sqlite,
      );
    } else {
      final dir = await getApplicationDocumentsDirectory();
      isar = await Isar.openAsync(
        name: 'isar_minimimal_test',
        schemas: [
          UserSchema,
          DownloaderTaskCollectionSchema,
        ],
        directory: dir.path,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Isar Demo'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Hello World'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //

                final newUser = User()
                  ..id = isar!.users.autoIncrement()
                  ..name = faker.person.name()
                  ..email = faker.internet.email();

                isar!.write((isar) {
                  return isar.users.put(newUser);
                });

                setState(() {});
                //
              },
              child: const Text('Add'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //

                final existingUser = isar!.users.where().findFirst();
                print('${existingUser?.name} ${existingUser?.id}');
                if (existingUser != null) {
                  var deleted = isar!.write((isar) {
                    return isar.users.delete(existingUser.id);
                  });
                  if (deleted == true) {
                    print('deleted record');
                  } else {
                    print('dont deleted record');
                  }
                }

                setState(() {});
                //
              },
              child: const Text('Remove'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //
                final newTask = DownloaderTaskCollection()
                  ..mediaId = isar!.downloaderTaskCollections.autoIncrement()
                  ..tag = faker.person.name()
                  ..url = faker.internet.uri('http');

                isar!.write((isar) {
                  return isar.downloaderTaskCollections.put(newTask);
                });

                print('newTask: ${newTask.mediaId}');
                setState(() {});

                var createdTask = isar!.downloaderTaskCollections
                    .where()
                    .mediaIdEqualTo(newTask.mediaId);

                print('newTask created: ${newTask.mediaId} ${newTask.tag}');
                setState(() {});
              },
              child: const Text('Task'),
            ),
            // ListView.builder(
            //   itemCount: isar!.users.count(),
            //   itemBuilder: (context, index) {
            //     var all = isar!.users.where().findAll();

            //     return Text("asd");
            //   },
            // ),
            for (var item
                in (isar == null ? [] : isar!.users.where().findAll()))
              Text('${item.id}: ${item.name} (${item.email})'),
          ],
        ),
      ),
    );
  }
}
