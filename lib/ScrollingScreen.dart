import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  ScrollingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: numberList.length,
      ),

      // body: ListView.builder(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '${numberList[index]}',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   },
      //   itemCount: numberList.length,
      // ),

      // body: ListView(
      //   children: numberList.map((number) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '$number',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),
    );
  }
}
