import 'package:flutter/material.dart';
import 'package:myapp/layouts/expandedWidget.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/homepagescroll.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    var color = Colors.blue.shade500;
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
      appBar: AppBar(
        title:const Text("Flutter Learning",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
        backgroundColor: color,
      ),
      body:  const HomePage(),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}
