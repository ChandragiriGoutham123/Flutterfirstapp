import 'package:flutter/material.dart';

import 'dashboard.dart';

void main()=> runApp(MaterialApp(
  home: SideDrawerFixed(),
));
 class SideDrawerFixed extends StatefulWidget {
   const SideDrawerFixed({Key? key}) : super(key: key);

   @override
   State<SideDrawerFixed> createState() => _SideDrawerFixedState();
 }

 class _SideDrawerFixedState extends State<SideDrawerFixed> {
   bool showOperationss = false;
   bool showSaless=false;
   bool showDatas=false;
   @override
   Widget build(BuildContext context) {
     return  Drawer(
           child: ListView(
             children: <Widget>[
               Padding(padding: EdgeInsets.all(20.0)),
               DrawerHeader(
                 child: Image(
                   image:AssetImage('isp.png'),
                   fit: BoxFit.none,

                 ),
               ),
               ListTile(
                 title: const Text('DashBoard'),
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoard()));
                 },
               ),
               ListTile(
                 title:  Text('Operations'),
                 onTap: () {
                   setState(() {
                     showOperationss=!showOperationss;
                   });
                 },
               ),
               if (showOperationss)...[
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title:  Text('ServiceRequest'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Bookings'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Event Managements'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Visitor log'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Parking'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Stock'),
                       onTap: () {},
                     )),
               ],
               ListTile(
                 title: const Text('Sales'),
                 onTap: () {
                   setState(() {
                     showSaless=!showSaless;
                   });
                 },
               ),
               if (showSaless) ...[
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Leads'),
                       onTap: () {},
                     )),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: ListTile(
                       title: const Text('Broker Fee'),
                       onTap: () {},
                     )),

               ],
               ListTile(
                 title:  Text('Data'),
                 onTap: () {
                   setState(() {
                     showDatas=!showDatas;
                   });
                 },
               ),
               if (showDatas)...[
                 Padding(
                   padding:const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Locations'),
                     onTap: (){},
                   ),
                 ),
                 Padding(
                   padding:const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('centers'),
                     onTap: (){},
                   ),
                 ),
                 Padding(
                   padding:const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Assets'),
                     onTap: (){},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Images'),
                     onTap: (){},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Company'),
                     onTap: (){},
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Client Employees'),
                     onTap: (){},
                   ),
                 ),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Private Offices'),
                     onTap: (){},
                   ),
                 ),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child:ListTile(
                     title: const Text('Conference Rooms'),
                     onTap: (){},
                   ) ,
                 ),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('parking'),
                     onTap: (){},
                   ),),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Brokers'),
                     onTap: (){},

                   ),),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('vendors'),
                     onTap: (){},
                   ),
                 ),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child:ListTile(
                     title: const Text('Departments'),
                     onTap: (){},
                   ) ,),
                 Padding(padding: const EdgeInsets.only(left: 20),
                   child: ListTile(
                     title: const Text('Employees'),
                     onTap: (){},
                   ),)

               ]
             ],
           ),
         );

   }
 }
