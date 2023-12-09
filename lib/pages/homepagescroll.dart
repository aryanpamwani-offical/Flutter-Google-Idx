import 'package:flutter/material.dart';
import 'package:myapp/components/centerContainer.dart';

class HomePageScroll extends StatefulWidget {
  const HomePageScroll({super.key});

  @override
  State<HomePageScroll> createState() => _HomePageScrollState();
}

class _HomePageScrollState extends State<HomePageScroll> {
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
      body:const SingleChildScrollView(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                 SizedBox(height: 20,),
               centerContainer(),
                SizedBox(
                 height: 20,
               ),
               centerContainer(),
                SizedBox(
                 height: 20,
               ),
               centerContainer(),
                SizedBox(
                 height: 20,
               ),
               centerContainer(),
                SizedBox(
                 height: 20,
               ),
               centerContainer(),
               SizedBox(
                 height: 20,
               ),
             ],
           ),
         ),
       ),
    );
  }
}