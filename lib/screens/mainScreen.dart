import 'package:aaf_boekhouder/screens/showImageScreen.dart';
import 'package:flutter/material.dart';

import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';


class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>{
  String loaded = 'Image button has been triggereed';
  File _image;

  Future getImage()  async {
    // ignore: deprecated_member_use
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),
          onPressed: () {

          },

        ),
        title: Text(widget.title),
        //backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {

          })
        ],
      ),
      body: Center(
          child:
          _image == null ? Text('Druk de onderste knop om foto te trekken') :
           ShowImageScreen(_image)
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        child: Icon(Icons.camera_alt_rounded),
      ),
    );
  }
}