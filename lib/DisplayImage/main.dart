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
  final List<String> imageLinks = [
    "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_640.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHo26DKN13YvkKfE6jxp6ahbaahWyJWIVoZw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0R72W77do5F3XD4qK5kqPV4tYVtkPyHK4zg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL_l-Y_YrEs3AeXhIXl9wsZVqGRPc_fJ23WQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCtSwZA_kp7keWKkANLkGnSTywQeuf8HLyYA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcUh2Ht3JtgiM520NouTHztVNVCO2UfkOpdA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJYtsKA9mWDnlfJpqiEszo5gTrK4jotLl45Q&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMHVRg_MnrqKaybZItCZpIS9kO7yKtEDtVxw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZx9WDxKgmzkobmu_v7P7N5jsfYNoV0wuNpA&s",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "Learn New Widget",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: imageLinks.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              //height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(imageLinks[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
