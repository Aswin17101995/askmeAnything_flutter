import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body:Askme(),
    ),
  ));
}

class Askme extends StatefulWidget {
  const Askme({Key? key}) : super(key: key);

  @override
  State<Askme> createState() => _AskmeState();
}

class _AskmeState extends State<Askme> {
  var dicenumber =1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/images/ball$dicenumber.png')),
        ],
      ),
      onPressed: (){
        setState(() {
          dicenumber = Random().nextInt(5) + 1;
        });
      },
    );
  }
}

