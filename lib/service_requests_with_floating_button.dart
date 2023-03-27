import 'package:firstapp/service_requests.dart';
import 'package:firstapp/sidedrawer.dart';
import 'package:flutter/material.dart';
class ServiceWithFloatingButton extends StatefulWidget {
  const ServiceWithFloatingButton({Key? key}) : super(key: key);

  @override
  State<ServiceWithFloatingButton> createState() => _ServiceWithFloatingButtonState();
}

class _ServiceWithFloatingButtonState extends State<ServiceWithFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Service Requests"),centerTitle: true,),
      drawer: SideDrawerFixed(),
      body:Column(

      ),
        floatingActionButton:   FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ServiceRequest()));
    },child: Icon(Icons.
    add)

    )
    );
  }
}
