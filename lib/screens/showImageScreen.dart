import 'package:flutter/material.dart';

import 'dart:io';


class ShowImageScreen extends StatelessWidget {

  File _image;

  ShowImageScreen(this._image);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Back'),
       ),
      body: Center(
          child:
          _image == null ? Text('Imag is not loaded') :
          Column (
              children: [
                Image.file(_image),
                RaisedButton(onPressed: null,
                  child: Text('VERSTUREN'),
                  color: Colors.blue,
                  textColor: Colors.white,
                )
              ]
          )),
    );
  }


}