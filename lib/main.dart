import 'package:aaf_boekhouder/screens/mainScreen.dart';
import 'package:flutter/material.dart';

import 'screens/mainScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aaf Consultants',

      home: MyHomePage(title: 'Aaf Consultants-Experts'),
    );
  }

}

