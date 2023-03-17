import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp/authentication/login_screen.dart';
import 'package:flutter/material.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(home: SplashScreen(),));
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (ctx) => LoginScreen()),(route) => false);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Welcome to my app"),
    );


  }
}
