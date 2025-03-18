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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "Flutter Development Tracker",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange[100],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.orange, Colors.red]),
              ),
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              },
              child: ListTile(title: Text("Inbox"), leading: Icon(Icons.inbox)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Outbox()),
                );
              },
              child: ListTile(
                title: Text("Outbox"),
                leading: Icon(Icons.outbox),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sent()),
                );
              },
              child: ListTile(
                title: Text("Sent"),
                leading: Icon(Icons.send_to_mobile),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Spam()),
                );
              },
              child: ListTile(
                title: Text("Spam"),
                leading: Icon(Icons.stacked_line_chart_outlined),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trash()),
                );
              },
              child: ListTile(
                title: Text("Trash"),
                leading: Icon(Icons.delete),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text("Inbox")),
          color: Colors.amber,
        ),
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  const Outbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text("OutBox")),
          color: Colors.orange,
        ),
      ),
    );
  }
}

class Sent extends StatelessWidget {
  const Sent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text("Sent Message")),
          color: Colors.green,
        ),
      ),
    );
  }
}

class Spam extends StatelessWidget {
  const Spam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text("Spam")),
          color: Colors.red,
        ),
      ),
    );
  }
}

class Trash extends StatelessWidget {
  const Trash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(child: Text("Trash")),
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

//task 8
