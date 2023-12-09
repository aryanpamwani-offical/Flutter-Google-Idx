import 'package:flutter/material.dart';
import 'package:myapp/components/centerContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var color = Colors.blue.shade500;
    
   
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Learning",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Column(
            
            children: [
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: centerContainer(),
              ),
            ],
          );
        },
        itemCount: 5,
      ),
      
    );
  }
}
