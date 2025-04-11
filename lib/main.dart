import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // State
  int _selectedIndex = 0;

  List<Widget> pages = [
    Home(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            label: "Settings",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Hello World"),
            Expanded(child: pages[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
            child: Text(
              'Home Page',
              style: TextStyle(fontSize: 50, color: Colors.white, shadows: [
                Shadow(offset: Offset(2, 2), blurRadius: 4, color: Colors.black)
              ]),
            ),
          )),
    ));
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.deepOrange,
            child: Center(
              child: Text(
                'Settings Page',
                style: TextStyle(fontSize: 50, color: Colors.white, shadows: [
                  Shadow(
                      offset: Offset(2, 2), blurRadius: 4, color: Colors.black)
                ]),
              ),
            )),
      ),
    );
  }
}
