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

class TestAppJson extends StatelessWidget {
  TestAppJson({Key? key}) : super(key: key);

  void getUser(BuildContext context) async {
    final file = await rootBundle.loadString('assets/artists.json');
    final json = jsonDecode(file);
    var userOne = User.fromJson(json[0]).name;
    var userTwo = User.fromJson(json[1]).name;
    var linkOne = User.fromJson(json[0]).about;
    var linkTwo = User.fromJson(json[1]).about;
  }

  
  @override
  Widget build(BuildContext context) {
    getUser(context);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Center(
                  child: Container(
                child: Text("$linkTwo"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
