
import 'package:firstapp/centers_and_location.dart';
import 'package:firstapp/drawer.dart';
import 'package:firstapp/main.dart';
import 'package:firstapp/sidedrawer.dart';
import 'package:firstapp/testsprout.dart';
import 'package:flutter/material.dart';
import './testsprout.dart';
import './sidedrawer.dart';
void main()=>runApp( MaterialApp(
  home: DashBoard(),
));


class DashBoard extends StatelessWidget {
   DashBoard({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('DashBoard'),
      ),drawer: SideDrawerFixed(),

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
                child: Text('Area'),alignment: Alignment.center,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => const IsproutApp()));
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
                child: Text('Locations/centres'),alignment: Alignment.center,
              ),
              onTap: () {

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
                child: Text('Workstations'),alignment: Alignment.center,
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
                child: Text('potential Revenue'),alignment: Alignment.center,
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
                child: Text('Employee'),alignment: Alignment.center,
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
                child: Text('Revenue'),alignment: Alignment.center,
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
                child: Text('Expenses'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Occupancy'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Clients'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Happiness Index'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Service Requests'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Conf.Bookings'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Leads'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Lead Pipeline'),alignment: Alignment.center,
              ),
              onTap: () {
                print("Tapped on container");
              },
            ),InkWell(
              child: Container(
                margin: const EdgeInsets.only(left: 30, top: 30),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Lead Closed'),alignment: Alignment.center,
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

  void setState(Null Function() param0) {}
}