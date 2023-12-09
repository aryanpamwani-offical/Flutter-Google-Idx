import 'package:flutter/material.dart';

class centerContainer extends StatefulWidget {
  const centerContainer({super.key});

  @override
  State<centerContainer> createState() => _centerContainerState();
}

class _centerContainerState extends State<centerContainer> {
  @override
  Widget build(BuildContext context) {
    var color = Colors.blue.shade500;
    return  Container(
      // We can define width in container as well as height
      width: 350,
      height: 350,

      // Aligning Child To Center
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          boxShadow: [
           const BoxShadow(
                blurRadius: 12, spreadRadius: 12, color: Colors.grey)
          ]),

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
            // ClipRReact widget used to add border to image
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
                      side: const BorderSide(width: 4.0, color: Colors.white)),
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
    );
  }
}