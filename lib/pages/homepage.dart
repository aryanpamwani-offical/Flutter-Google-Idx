import 'package:flutter/material.dart';
import 'package:myapp/layouts/centerContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNm = ['dskafsd' 'sdffdksjh', 'ffsdf','fhkjdsfhskj'];
    var color = Colors.blue.shade500;

    // return ListView.builder(

    //   itemBuilder: (context, index) {
    //     return const Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: centerContainer(),
    //         ),
    //       ],
    //     );
    //   },
    //   itemCount: 5,
    // );

    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index + 1}'),
          title: Column(
           children: [
             Padding(
               padding: EdgeInsets.all(3.0),
               child: centerContainer(),
            ),
          ],
          ),
       
          subtitle: Text("Number"),
          trailing: Icon(Icons.add),
        ); // For both listView.builder & ListView.separated
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 5,
    );
  }
}
