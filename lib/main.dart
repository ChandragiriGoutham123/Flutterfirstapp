

import 'package:flutter/material.dart';

// Import the firebase_core plugin



void main()=> runApp(const MaterialApp(
  home: MyApp(),
));
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
   String str='';


  void locations() {
    setState(() {
      number += 1;
    });
    str = number.toString();

  }
  void minus(){
    setState(() {
      number -= 1;
    });
   str = number.toString();
  }
    @override
    Widget  build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(str),),
        body: Row(

          children:<Widget> [
            Center(
              child: ElevatedButton(

                onPressed: locations,
                child: const Text('add')),
            ),
            Center(
              child: ElevatedButton(onPressed: minus, child: const Text('minus'),),
            )
          ],
        ),
      );
    }
  }

