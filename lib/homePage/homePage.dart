import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User {
  final String name;
  final String link;
  final String about;

  User({required this.name, required this.link, required this.about});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      link: json['link'] as String,
      about: json['about'] as String,
    );
  }

  Map<String, dynamic> toJson() => {'name': name, 'link': link, 'about': about};
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var users = <User>[];

  getUser() async {
    users.clear();

    final file = await rootBundle.loadString('assets/artists.json');
    final json = jsonDecode(file);
    var userZero = User.fromJson(json[0]);
    var userOne = User.fromJson(json[1]);
    var userTwo = User.fromJson(json[2]);
    var userThree = User.fromJson(json[3]);
    var userFour = User.fromJson(json[4]);
    var userFive = User.fromJson(json[5]);
    var userSix = User.fromJson(json[6]);

    users.add(userZero);
    users.add(userOne);
    users.add(userTwo);
    users.add(userThree);
    users.add(userFour);
    users.add(userFive);
    users.add(userSix);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.amber,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/About');
                  },
                  child: const Text('Home'),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      getUser();
                    });
                  },
                  child: const Text('albums'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
          children: users
              .map((e) => SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/JsonText');
                        },
                        child: Text(e.name)),
                  ))
              .toList()),
    ));
  }
}

class JsonText extends StatelessWidget {
  JsonText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('')),
    );
  }
}
