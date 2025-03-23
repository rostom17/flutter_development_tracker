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
  List<String> names = [
    "ROSTOM",
    "ALI",
    "NAGIB",
    "SONGIT",
    "RATAN",
    "MEHEDI",
    "HELLO WORLD",
  ];

  void _deleteItem(int index) {
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Item Deleted"), duration: Duration(seconds: 2)),
    );
  }

  void _editItem(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Edit Item: ${names[index]}"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "Edit Delete",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder:
            (context, index) => Dismissible(
              key: Key(index.toString()),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.delete, color: Colors.white, size: 30),
              ),

              secondaryBackground: Container(
                color: Colors.blue,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.edit, color: Colors.white, size: 30),
              ),

              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  _editItem(index);
                } else {
                  _deleteItem(index);
                }
              },
              child: Card(
                color: Colors.amber,
                elevation: 3,
                shadowColor: Colors.grey,
                child: SizedBox(
                  height: 100,
                  width: double.maxFinite,
                  child: Center(child: Text(names[index])),
                ),
              ),
            ),
      ),
    );
  }
}
