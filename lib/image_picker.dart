import 'package:flutter/material.dart';
class ImagePickerJpg extends StatefulWidget {
  const ImagePickerJpg({Key? key}) : super(key: key);

  @override
  State<ImagePickerJpg> createState() => _ImagePickerJpgState();
}

class _ImagePickerJpgState extends State<ImagePickerJpg> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(onPressed: () {  },child: Text("choose image to upload"),

      ),
    );
  }
}
