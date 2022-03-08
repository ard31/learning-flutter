import 'package:flutter/material.dart';
import 'package:flutter_app/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  final String message = 'Hello From First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Custom Font!',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
        // child: Image.asset(
        //   'images/dicoding.png',
        //   width: 200,
        //   height: 200,
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondScreen(message)));
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return SecondScreen();
          // }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
