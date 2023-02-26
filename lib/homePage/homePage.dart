import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    Navigator.of(context).pushNamed('/Blog');
                  },
                  child: const Text('Artists'),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    
                    Navigator.of(context).pushNamed('/TestApp');
                  },
                  child: const Text('ТЕСТ'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
