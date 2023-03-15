import 'package:flutter/material.dart';
import'./testsprout.dart';
import './dashboard.dart';
void main()=> runApp( const MaterialApp(
  home: drawer(),
));
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  bool dashboard = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Dashboard"),),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[

            DrawerHeader(child: Image(image: AssetImage('ISPPP.jpg'),filterQuality: FilterQuality.high,),),
            ListTile(title: Text("Dashboard"),textColor: Colors.black,tileColor: Colors.amber,onTap: () {
              setState(() {
                dashboard = !dashboard;
                if (dashboard) {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Dashboard()));
                }});
            },),
            ListTile(title: Text("Operations"),textColor: Colors.black,tileColor: Colors.amber,onTap: null,),
            ListTile(title: Text("Sales"),textColor: Colors.black,tileColor: Colors.amber,onTap: null,),
            ListTile(title: Text("Data"),textColor: Colors.black,tileColor: Colors.amber,onTap: null,)
          ],
        ),
      ),
    );
  }
}
