import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:isar_community/isar_community.dart';
import 'package:isar_community_minimal_test/user.dart';
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
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [UserSchema],
      directory: dir.path,
    );
    setState(() {});
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //

                final newUser = User()
                  ..name = faker.person.name()
                  ..email = faker.internet.email();

                isar!.writeTxnSync(() async {
                  return isar!.users.putSync(newUser);
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

                final existingUser = isar!.users.where().findFirstSync();
                print('${existingUser?.name} ${existingUser?.id}');
                if (existingUser != null && existingUser.id != null) {
                  var deleted = isar!.writeTxnSync(() {
                    return isar!.users.deleteSync(existingUser.id!);
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
            // ListView.builder(
            //   itemCount: isar!.users.count(),
            //   itemBuilder: (context, index) {
            //     var all = isar!.users.where().findAll();

            //     return Text("asd");
            //   },
            // ),
            for (var item
                in (isar == null ? [] : isar!.users.where().findAllSync()))
              Text('${item.id}: ${item.name} (${item.email})'),
          ],
        ),
      ),
    );
  }
}
