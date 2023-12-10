import 'package:flutter/material.dart';

class ExpeandedWidget extends StatefulWidget {
  const ExpeandedWidget({super.key});

  @override
  State<ExpeandedWidget> createState() => _ExpeandedWidgetState();
}

class _ExpeandedWidgetState extends State<ExpeandedWidget> {
  @override
  Widget build(BuildContext context) {
    var color = Colors.blue.shade500;
    return Column(
      children: [
       const Padding(padding:  EdgeInsets.all(4),),
        Expanded(
          flex: 2,
          child: Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black
            ),
    
          ),
        ),
         const Padding(padding:  EdgeInsets.all(2),),
        Expanded(
          flex: 1,
          child: Container(
            height: 400,
            width: 200,
          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey
            ),
    
          ),
        ),
         const Padding(padding:  EdgeInsets.all(2),),
        Expanded(
          flex: 4,
          child: Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink
            ),
    
    
          ),
        ),
         const Padding(padding:  EdgeInsets.all(2),),
        Expanded(
          flex: 3,
          child: Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow
            ),
    
          ),
        ),
         const Padding(padding:  EdgeInsets.all(2),),
        Expanded(
          flex: 5,
          child: Container(
            height: 400,
            width: 200,
              margin: const EdgeInsets.only(top:20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red
            ),
    
          ),
        ),
         const Padding(padding:  EdgeInsets.all(2),),
      ],
    );
  }
}
