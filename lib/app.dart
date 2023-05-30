import 'aboutPage/aboutPage.dart';
import 'blogPage/blogPage.dart';
import 'homePage/homePage.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/About': (context) => const AboutPage(),
        '/Blog': (context) => const BlogPage(),
        '/JsonText': (context) =>  JsonText()
       //'/TestApp': (context) => TestAppJson(),
      },
    );
  }
}
