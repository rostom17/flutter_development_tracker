import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDrawerOpen = false;
  final double _drawerWidth = 250;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue[50],
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isDrawerOpen = !_isDrawerOpen;
                });
              },
              child: Text(_isDrawerOpen ? 'Close Drawer' : 'Open Drawer'),
            ),
          ),
        ),

        if (_isDrawerOpen)
          GestureDetector(
            onTap: () {
              setState(() {
                _isDrawerOpen = false;
              });
            },
            child: Container(
              color: Colors.black.withValues(
                alpha: 155,
                blue: 12,
                red: 2,
                green: 28,
              ),
            ),
          ),

        AnimatedPositioned(
          duration: Duration(milliseconds: 800),
          curve: Curves.decelerate,
          left: _isDrawerOpen ? 0 : -_drawerWidth,
          top: 0,
          bottom: 0,
          width: _drawerWidth,
          child: Material(
            elevation: 8,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 100, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () {
                      setState(() {
                        _isDrawerOpen = false;
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      setState(() {
                        _isDrawerOpen = false;
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                    onTap: () {
                      setState(() {
                        _isDrawerOpen = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
