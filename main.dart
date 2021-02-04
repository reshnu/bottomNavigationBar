import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex=0;
  final items=[
    Center(child: Text('Home'),),
    Center(child: Text('Settings'),),
    Center(child: Text('Search'),),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('BottomNavigationBar'),),
        body:items[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.greenAccent),
          ],
          onTap: (index){
            setState(() {
              currentIndex=index;
            });

          },
        ),
      ),
    );
  }
}
