import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  static const routeName = '/Blog';
  const BlogPage({Key? key}) : super(key: key);
  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(), backgroundColor: Colors.orange, body: Text('1')),
    );
  }
}
