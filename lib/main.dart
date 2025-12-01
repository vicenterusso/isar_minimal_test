import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar_community/isar.dart';
import 'package:isar_minimal_test/isar_directory.dart';
import 'package:isar_minimal_test/user.dart';

const _isarName = 'isar_minimimal_test';

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
  final Faker _faker = Faker();
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  bool _isInitialized = false;
  List<User> _users = <User>[];
  StreamSubscription<List<User>>? _userSubscription;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _initializeIsar();
  }

  void _onSearchChanged() {
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  Future<void> _initializeIsar() async {
    if (kIsWeb) {
      await Isar.initialize('isar_1764614962.wasm');
    }

    final directory =
        kIsWeb ? Isar.sqliteInMemory : await resolveIsarDirectory(_isarName);

    if (kIsWeb) {
      isar = await Isar.openAsync(
        name: _isarName,
        schemas: [UserSchema],
        directory: '',
        engine: IsarEngine.sqlite,
      );
    } else {
      isar = await Isar.openAsync(
        name: _isarName,
        schemas: [UserSchema],
        directory: directory,
        engine: IsarEngine.isar,
      );
    }

    if (!mounted) {
      return;
    }

    setState(() {
      _isInitialized = true;
    });

    if (kIsWeb) {
      await _loadUsers();
    } else {
      _userSubscription = isar!
          .users
          .where()
          .watch(fireImmediately: true)
          .listen((event) {
        if (!mounted) {
          return;
        }
        setState(() {
          _users = List<User>.from(event);
        });
      });
    }
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _userSubscription?.cancel();
    super.dispose();
  }

  int _randomAge() => 18 + _faker.randomGenerator.integer(50);

  String _userInitial(User user) {
    final value = user.name;
    if (value == null || value.isEmpty) {
      return '?';
    }
    return value.substring(0, 1).toUpperCase();
  }

  Future<T> _writeTxn<T>(T Function(Isar isar) callback) {
    final instance = isar!;
    if (kIsWeb) {
      return Future<T>.value(instance.write(callback));
    }
    return instance.writeAsync(callback);
  }

  Future<void> _loadUsers() async {
    if (isar == null) {
      return;
    }
    final users = isar!.users.where().findAll();
    if (!mounted) {
      return;
    }
    setState(() {
      _users = users;
    });
  }

  User? _pickRandomUser() {
    final users = isar!.users.where().findAll();
    if (users.isEmpty) {
      return null;
    }
    final index = _faker.randomGenerator.integer(users.length);
    return users[index];
  }

  Future<void> _addRandomUser() async {
    if (isar == null) {
      return;
    }
    final user = User()
      ..id = isar!.users.autoIncrement()
      ..name = _faker.person.name()
      ..age = _randomAge();

    try {
      await _writeTxn((isar) => isar.users.put(user));
      if (kIsWeb) {
        await _loadUsers();
      }
      _showMessage('Added ${user.name}');
    } catch (error) {
      _showMessage('Failed to add user: $error');
    }
  }

  Future<void> _editRandomUser() async {
    if (isar == null) {
      return;
    }
    final user = _pickRandomUser();
    if (user == null) {
      _showMessage('No records to edit');
      return;
    }

    user
      ..name = _faker.person.name()
      ..age = _randomAge();

    try {
      await _writeTxn((isar) => isar.users.put(user));
      if (kIsWeb) {
        await _loadUsers();
      }
      _showMessage('Updated ${user.name}');
    } catch (error) {
      _showMessage('Failed to edit user: $error');
    }
  }

  Future<void> _deleteRandomUser() async {
    if (isar == null) {
      return;
    }
    final user = _pickRandomUser();
    if (user == null) {
      _showMessage('No records to delete');
      return;
    }

    try {
      await _writeTxn((isar) => isar.users.delete(user.id));
      if (kIsWeb) {
        await _loadUsers();
      }
      _showMessage('Deleted ${user.name ?? 'User'}');
    } catch (error) {
      _showMessage('Failed to delete user: $error');
    }
  }

  void _showMessage(String message) {
    final messenger = _scaffoldMessengerKey.currentState;
    messenger?.showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _scaffoldMessengerKey,
      title: 'Isar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Isar Demo'),
        ),
        body: _isInitialized
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        labelText: 'Search users',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        ElevatedButton(
                          onPressed: _isInitialized ? _addRandomUser : null,
                          child: const Text('Add User'),
                        ),
                        ElevatedButton(
                          onPressed: _isInitialized ? _editRandomUser : null,
                          child: const Text('Edit Random User'),
                        ),
                        ElevatedButton(
                          onPressed: _isInitialized ? _deleteRandomUser : null,
                          child: const Text('Delete Random User'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final query = _searchController.text.trim().toLowerCase();
                          final users = List<User>.from(_users)
                            ..sort((a, b) => b.id.compareTo(a.id));
                          final filteredUsers = query.isEmpty
                              ? users
                              : users
                                  .where((user) =>
                                      (user.name ?? '').toLowerCase().contains(query))
                                  .toList();

                          if (filteredUsers.isEmpty) {
                            return const Center(
                              child: Text('No users found'),
                            );
                          }

                          return ListView.separated(
                            itemBuilder: (context, index) {
                              final user = filteredUsers[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  child: Text(_userInitial(user)),
                                ),
                                title: Text(user.name ?? 'No name'),
                                subtitle: Text('Age: ${user.age ?? '-'} | ID: ${user.id}'),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const Divider(height: 1),
                            itemCount: filteredUsers.length,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
