import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
   import 'package:untitled15/main2.dart';
import 'package:untitled15/main3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


   @override
  Widget build(BuildContext context) {

     return Scaffold(

      appBar: AppBar(),
body: OrientationBuilder(builder:
    (context, orientation) {
  if(orientation==Orientation.landscape){
    return Container(color: Colors.cyan,);
  }else{
    return Container(color: Colors.red,);
  }
},),


    );
  }
}
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<Map<String,dynamic>> list=[
    {
      "name":"fahad",
      "massage":" hi fahad",
      "seen":true,
    },{
      "name":"sami",
      "massage":" hi sami",
      "seen":false,
    },{
      "name":"abbu",
      "massage":" hi abbu",
      "seen":true,
    },{
      "name":"ammu",
      "massage":" hi ammu",
      "seen":false,
    },



  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {

        return ListTile(
          title: Text(list[index]["name"]),
          subtitle: Text(list[index]["massage"]),
          trailing: list[index]["seen"]==true?Icon(Icons.check_box):Icon(Icons.u_turn_left_rounded),
        );
    },

    );
  }
}

class thrird extends StatefulWidget {
  const thrird({Key? key}) : super(key: key);

  @override
  State<thrird> createState() => _thrirdState();
}

class _thrirdState extends State<thrird> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p0, p1) {
      if(p1.maxHeight<=700){
        return Container(color: Colors.black,);
      }else{
        return Container(color: Colors.green,);
      }
    },);
  }
}
