import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:f_lesson_14/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<User> users;
  @override
  void initState() {
    super.initState();
    users = [];
  }

  @override
  Widget build(BuildContext context) {
    getUserWithHTTP();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder<List<User>>(
        future: getUserWithHTTP(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final User user = users[index];
                return Card(
                  child: ListTile(
                    title: Text('E-mail: ${user.email}'),
                    subtitle: Text('Phone: ${user.phone}'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.image),
                    ),
                    trailing: Text('Age: ${user.age}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

/// Fetch data using Dio package
Future<List<User>> getUserWithDio() async {
  const url = 'https://dummyjson.com/users';

  try {
    final response = await Dio().get(url);
    if (response.statusCode == 200) {
      final List<dynamic> usersData = response.data['users'] as List;

      final List<User> data = usersData.map((e) => User.fromJson(e)).toList();
      return data;
    }
  } catch (e) {
    debugPrint('Error: $e');
  }

  return [];
}

/// Fetch data using HTTP package
Future<List<User>> getUserWithHTTP() async {
  const url = 'https://dummyjson.com/users';
  var uri = Uri.parse(url);

  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final usersData = jsonDecode(response.body);
      final data = usersData['users']
          .map<User>((e) => User.fromJson(e))
          .toList() as List<User>;

      return data;
    }
  } catch (e) {
    debugPrint('Error: $e');
  }

  return [];
}
