import 'package:blog_fire/resource/theme.dart';
import 'package:flutter/material.dart';
import 'package:blog_fire/screens/profile_screen.dart';
import 'package:blog_fire/screens/save_blogs_screen.dart';
import 'package:blog_fire/screens/search_screen.dart';
import 'package:get/get.dart';


import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  final screens = const [
    HomeScreen(),
    SearchScreen(),
    SaveBlogsScreen(),
    ProfileScreen(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      themeMode:ThemeMode.system ,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      
      home: Scaffold(
        body: screens[_index],
        
        bottomNavigationBar: NavigationBar(
            labelBehavior:NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: _index,
            onDestinationSelected: (index)=> setState(() {
              _index = index;
            }),
            destinations:const  [
              NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon:Icon(Icons.home_rounded) , 
              label: "Home"),
              NavigationDestination(
                icon: Icon(Icons.search_outlined), 
                selectedIcon: Icon(Icons.search_rounded),
                label: "Search"),
              NavigationDestination(
                icon: Icon(Icons.bookmarks_outlined),
                selectedIcon: Icon(Icons.bookmarks_rounded),
                 label: "Save"),
              NavigationDestination(
                selectedIcon: Icon(Icons.account_circle_rounded),
                icon: Icon(Icons.account_circle_outlined), 
                label: "Profile"),
            ],
          
        ),
      
      floatingActionButton: (_index == 0 || _index == 1)?FloatingActionButton(
              onPressed: (){

              },
              mini: false,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              backgroundColor: Colors.green,
              child: const Icon(Icons.edit_square),
              ):null,
      ),
    );
  }
}

