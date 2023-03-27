import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: TextText(),
  ));
}

TextEditingController hi = TextEditingController();
class TextText extends StatefulWidget {
   const TextText({Key? key}) : super(key: key);


  @override
  State<TextText> createState() => _TextTextState();
}

class _TextTextState extends State<TextText> {
  List<dynamic> locations =[];
  List<dynamic> centerMasters =[];
  List<dynamic> centers =[];
  String? locationId;
  String? centerId;
  @override
  void initState(){
    super.initState();
    this.locations.add({"id":1,"name": "Hyderabad"});
    this.locations.add({"id":2, "name":"Chennai"});
    this.centerMasters=[{"ID":1,"Name": "Madhapur","ParentId": 1},
      {"ID":2,"Name": "Jubli hills","ParentId": 1},
      {"ID":3,"Name": "Ameerpet","ParentId": 1},
      {"ID":1,"Name": "Redhills","ParentId": 2}
    ];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google'),),
      body: Column(
        children: <Widget>[
          FormHelper.dropDownWidgetWithLabel(context,"Location", "Select location", this.locationId, this.locations,
              (onChangedVal){
                this.locationId=onChangedVal;
                print(locationId);
                this.centers=this.centerMasters.where((stateItem) => stateItem["ParentId"].toString()== onChangedVal.toString(),).toList();
                this.centerId= null;
                print(centers);
              }, (onValidateVal){
                if (onValidateVal == null){
                  return  'Please select Location';
                }
                return null;
              },optionValue: "id",optionLabel: "name",borderRadius: 10,borderColor: Theme.of(context).primaryColor),
          FormHelper.dropDownWidgetWithLabel(context, "center", "Select center", this.centerId,
              this.centers, (onChangedVal){
            this.centerId=onChangedVal;
            print(centerId);
              }, (onValidate){
            return null;
              },optionValue: "ID",optionLabel: "Name",borderColor: Theme.of(context).primaryColor,borderRadius: 10)
        ],
      ),
    );
  }
}

