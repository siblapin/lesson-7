import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);
  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  String name1 = "limp bizkit";
  String name2 = "arctic monkeys";
  String name3 = "kasabian";
  String name4 = "red hot chili peppers";
  String name5 = "the pixies";
  String name6 = "limp bizkit";
  String name7 = "The Heavy";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.orange,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(children: [
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name1))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name2))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name3))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name4))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name5))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name6))),
            SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {}, child: Text(name7))),
          ]),
        ),
      ),
    );
  }
}
