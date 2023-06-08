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
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return const HomePage();
        });
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage();
            });
          case AboutPage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const AboutPage();
            });
          case BlogPage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const BlogPage();
            });
          case JsonText.routeName:
            var Review = settings.arguments as String;
            var Name = settings.arguments as String;
            return MaterialPageRoute(builder: (BuildContext context) {
              return JsonText(
                Review: Review,
                name: Name,
              );
            });

          default:
        }
      },
    );
  }
}
