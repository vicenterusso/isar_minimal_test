import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
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
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [UserSchema],
      directory: dir.path,
    );

    final newUser = User()
      ..name = 'Jane Doe'
      ..age = 36;

    await isar!.writeTxn(() {
      return isar!.users.put(newUser);
    });

    if (newUser.id != null) {
      final existingUser = await isar!.users.get(newUser.id!);
      print('${existingUser?.name} ${existingUser?.id}');
      if (existingUser != null) {
        var deleted = await isar!.writeTxn(() {
          return isar!.users.delete(existingUser.id!);
        });
        if (deleted == true) {
          print('deleted record');
        } else {
          print('dont deleted record');
        }
      }
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
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
