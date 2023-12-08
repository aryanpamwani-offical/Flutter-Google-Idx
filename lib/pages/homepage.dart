import 'package:flutter/material.dart';

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
        title: const Text("Wscube Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          // We can define width in container as well as height
          width: 350,
          height: 350,
          // Aligning Child To Center

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: color),

          child: Center(
            // Learning about the text widget style
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Welcome To Flutter Learning",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      print("Hello");
                    },
                    child: Image.asset(
                      'assets/images/medicine.jpg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Btn Pressed");
                      },
                      child: const Text("Elevated Button"),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 12)),
                    OutlinedButton(
                      onPressed: () {
                        print("Btn Pressed");
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              width: 4.0, color: Colors.white)),
                      child: const Text(
                        "Outlined Button",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
