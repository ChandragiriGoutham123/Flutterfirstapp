// importing dependencies
import 'package:firstapp/drawer.dart';
import 'package:firstapp/sidedrawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// function to trigger the build process
void main() => runApp(const LocationAndCenters());

_launchHyderabad() async {
  var url = Uri.parse(
      "https://www.google.com/maps/d/viewer?mid=1EzgROmKbC6QJLitgj_kJY9JyPsc&ptab=2&ie=UTF8&oe=UTF8&msa=0&ll=17.409152968829808%2C78.39616849999999&z=11");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchPune() async {
  var url = Uri.parse("https://www.google.com/maps/d/viewer?mid=1Ufluk6RrYShZDh4hMC48qPuEDRg&ie=UTF8&hl=en&msa=0&ll=18.52465256713074%2C73.86296740000002&spn=0.080934%2C0.154495&z=12");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchChennai() async {
  var url = Uri.parse("https://www.google.com/maps/d/viewer?mid=1Ufluk6RrYShZDh4hMC48qPuEDRg&ie=UTF8&hl=en&msa=0&ll=13.063926999999996%2C80.27864499999998&spn=0.080934%2C0.154495&z=13");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchBangalore() async {
  var url = Uri.parse("https://www.google.com/maps/d/viewer?mid=1k35Ia3iDr0SyJaMdv2N6c2_AUvw&hl=en&ll=13.051909273508308%2C77.94435300000002&z=11");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchVijayawada() async {
  var url = Uri.parse("https://www.google.com/maps/d/viewer?mid=1Ag_4UqU_cAdh3NOsxvQTMqkO9MY&hl=en&ll=16.503373013240836%2C80.6394235&z=16");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

bool hydcenters=false;
class LocationAndCenters extends StatelessWidget {
  const LocationAndCenters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: SideDrawerFixed(),
          appBar: AppBar(
            title: const Text('Locations and centers'),
            backgroundColor: Colors.yellow,
          ),
          body:
          Column(

            children: <Widget>[

              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(20.0),  child: TextButton(onPressed: () {
                    hydcenters = !hydcenters;
                    if (hydcenters){

                    }

                  },child: Text('Hyderabad'),)),
                  ElevatedButton(
                      onPressed: _launchHyderabad, child: Text('View in map')),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(40.0), child: Text('Pune')),
                  ElevatedButton(
                      onPressed: _launchPune, child: Text('View in map')),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(20.0), child: Text('Bangalore')),
                  ElevatedButton(
                      onPressed: _launchBangalore, child: Text('View in map')),
                ],
              ),
              Row(

                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(30.0), child: Text('Chennai')),
                  ElevatedButton(
                      onPressed: _launchChennai, child: Text('View in map')),
                ],
              ),
              Row(

                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(20.0), child: Text('Vijayawada')),
                  ElevatedButton(
                      onPressed: _launchVijayawada, child: Text('View in map')),
                ],
              ),
            ],
          )),
    );
  }
}