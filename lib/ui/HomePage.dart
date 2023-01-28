import 'package:flutter/material.dart';
import 'package:instaui/ui/pages/home.dart';
import 'package:instaui/ui/pages/perfil.dart';
import 'package:instaui/ui/pages/search.dart';
import 'package:instaui/ui/pages/shop.dart';
import 'package:instaui/ui/pages/video.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _selectedIndex = 0;

  void _navigateToNavBar(int index){
   setState(() {
     _selectedIndex = index;
   });
  }


  final List<Widget> _children=[
     Home(),
     Search(),
     Video(),
     Shop(),
     Perfil()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateToNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "videos"),
             BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
             BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "conta"),

        ],
      ),

    );
  }
}







