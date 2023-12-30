import 'package:flutter/material.dart';

class AppTheme{

  static ThemeData lightTheme=ThemeData(
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      color: Colors.grey
    ),
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(
      
      primary: Colors.grey,
      secondary: Colors.black,
      onSecondary: Colors.grey

    ),
    tabBarTheme: TabBarTheme(
      overlayColor: MaterialStatePropertyAll(Colors.transparent),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.black
    ),
    
    navigationBarTheme:  NavigationBarThemeData(
      indicatorShape: null,
        backgroundColor: Colors.white,
            
            surfaceTintColor: Colors.white,
            shadowColor: Colors.white,
            indicatorColor: Colors.white,
            overlayColor:MaterialStatePropertyAll(Colors.white),
            iconTheme: MaterialStatePropertyAll(IconThemeData(
              color: Colors.black,
              size: 28
            ))
          ),
    
  );


  static ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(31, 115, 113, 113) ,
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    
    
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.grey
      ),
      color:Color.fromARGB(31, 34, 33, 33),
      titleTextStyle: TextStyle(
        color: Colors.grey
      )
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.grey,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.grey
      ),
      
    dialogBackgroundColor: Colors.black,
    colorScheme:const  ColorScheme.dark(
      primary:Colors.black,
      secondary: Color.fromARGB(31, 115, 113, 113),
      onSecondary:Color.fromARGB(31, 115, 113, 113) ,
      background:Color.fromARGB(31, 115, 113, 113)
      ),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Color.fromARGB(31, 34, 33, 33),
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            iconTheme: MaterialStatePropertyAll(IconThemeData(
              color: Colors.grey,
              size: 28
            ))
          ),
  );
}