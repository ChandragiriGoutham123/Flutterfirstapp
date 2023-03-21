

import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/authentication/Home_screen.dart';
import 'package:firstapp/authentication/user_model.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';




class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            TextField(

              keyboardType: TextInputType.emailAddress,
              controller: _emailTextEditingController,
              decoration: InputDecoration(labelText: "Email",hintText: "Enter mail",border: OutlineInputBorder()),
            ),SizedBox(height: 20,),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              controller: _passwordTextEditingController,
              decoration: InputDecoration(labelText: "Password",hintText: "Enter Password",border: OutlineInputBorder()),
            ),SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              login(_emailTextEditingController, _passwordTextEditingController);
            }, child: Text("Register")),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }
                , child:   Text("Already had an account"))
          ],
        ),
      ),
    );
  }
}
login(_emailTextEditingController,_passwordTextEditingController){
  String email = _emailTextEditingController.text;
  String password =  _passwordTextEditingController.text;

  print("$email and $password");
  FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value){
    postDetailsToFire();
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text("User account created")));
    Navigator.pushAndRemoveUntil(context as BuildContext, MaterialPageRoute(builder: (ctx)=> MyApp()), (route) => false);
  })
      .catchError((e){
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text("User acount creation failed"+e.toString())));
  });


}
postDetailsToFire()  async{
  FirebaseFirestore firebaseFire =FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  var uid = user?.uid;
  var email = user?.email;
  var name = user?.email?.split("@")[0];
  UserModel userModel = UserModel(uid: '$uid', email: '$email', name: '$name', profileImage: '', timeStamp: null);
  await firebaseFire.collection("users").doc(user?.uid).set(userModel.toMap());
  ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text("User account created")));
}




