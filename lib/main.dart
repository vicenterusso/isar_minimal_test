import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar_community/isar.dart';
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
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [UserSchema],
      name: 'isar_minimimal_test',        
      directory: dir.path,
    );
    _refreshUsers();
  }

  Future<void> _refreshUsers() async {
    if (isar != null) {
      final result = await isar!.users.where().findAll();
      setState(() {
        users = result;
      });
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
              onPressed: () async {
                final newUser = User()
                  ..name = faker.person.name()
                  ..email = faker.internet.email();

                await isar!.writeTxn(() async {
                  await isar!.users.put(newUser);
                });

                _refreshUsers();
              },
              child: const Text('Add'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final existingUser = await isar!.users.where().findFirst();
                if (existingUser != null) {
                  print('${existingUser.name} ${existingUser.id}');
                  
                  final deleted = await isar!.writeTxn(() async {
                    return await isar!.users.delete(existingUser.id);
                  });
                  
                  if (deleted) {
                    print('deleted record');
                  } else {
                    print('did not delete record');
                  }
                  
                  _refreshUsers();
                }
              },
              child: const Text('Remove'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final item = users[index];
                  return ListTile(
                    title: Text('${item.id}: ${item.name}'),
                    subtitle: Text(item.email ?? 'No email provided'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}