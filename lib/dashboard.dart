
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[200],
        child: Wrap(
          children: <Widget>[
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('sample'),alignment: Alignment.center,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => const MyApp()));
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Hello'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('sample'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('sample'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('sample'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('sample'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),
          ],
        ),
      ),
    );
  }
}