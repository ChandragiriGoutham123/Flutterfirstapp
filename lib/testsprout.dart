
import 'package:firstapp/dashboard.dart';
import 'package:firstapp/sidedrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const IsproutApp());
}

class IsproutApp extends StatelessWidget {
  const IsproutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      drawer: SideDrawerFixed(),
      body: DashBoard()
    );
  }
}
