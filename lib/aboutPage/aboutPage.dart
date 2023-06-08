import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const routeName = '/About';
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        backgroundColor: Colors.green,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Вернуться назад'),
          ),
        ),
      ),
    );
  }
}
