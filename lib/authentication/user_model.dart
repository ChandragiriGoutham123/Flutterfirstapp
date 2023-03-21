import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String uid;
  String email;
  String name;
  String profileImage;
  var timeStamp;
  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.profileImage,
    required this.timeStamp,
});
  factory UserModel.fromMap(Map map){
    return UserModel(uid: map['uid'], email: map['email'], name: map['name'], profileImage: map['profileImage'], timeStamp: map['timeStamp'],);
  }
  Map<String,dynamic> toMap(){
    return {
      'uid':uid,
      'email': email,
      'name': name,
      'profileImage':profileImage,
      'timeStamp': FieldValue.serverTimestamp(),
    };
  }
}