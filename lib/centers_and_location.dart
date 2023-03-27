// importing dependencies
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

// Initial Selected Value
  String location = 'Hyderabad';

// List of items in our dropdown menu
  var locations = [
    'Hyderabad',
    'Chennai',
    'Bangalore',
    'Pune',
    'Vijayawada',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Locations and Centers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          DropdownButton(value:location,icon:const Icon(Icons.arrow_downward),
              items:locations.map((String locations){
                return DropdownMenuItem(value:locations,child: Text(locations));
              }).toList(),
               onChanged: (String? newvalue){
            setState(() {
              location=newvalue!;
            });
      })
          ],
        ),
      ),
    );
  }
}
