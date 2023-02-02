import 'package:flutter/material.dart';
import 'package:news_app/model/aricle.dart';
import 'package:news_app/screens%20/descover_screen.dart';

import 'article_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Colors.white ,)),





      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withAlpha(100),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                  
                },
                icon: const Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, DiscoverSceen.routeName);
                },
                icon: const Icon(Icons.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ArticleSceen.routeName);
                },
                icon: const Icon(Icons.people_rounded),
              ),
              label: 'Profile',
            )
          ]),           
        extendBodyBehindAppBar: true,
         

      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.45,

decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  image: DecorationImage(image: NetworkImage(Article.articles[0],imageUrl),
  fit: BoxFit.cover, )



),
             




            
          ),
        ],

      ),
    );
  }
}
