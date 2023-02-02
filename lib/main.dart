import 'package:flutter/material.dart';
import 'package:news_app/screens%20/article_screen.dart';
import 'package:news_app/screens%20/descover_screen.dart';
import 'package:news_app/screens%20/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter News App UI',
       theme: ThemeData(
        primarySwatch:Colors.grey ,

       ),

       initialRoute: '/',

       routes: {
        HomeScreen.routeName: (context) => const HomeScreen(), 
        DiscoverSceen.routeName: (context)=> const DiscoverSceen(),
        ArticleSceen.routeName: (context) => ArticleSceen(),
        
       },
    );
  }
}
