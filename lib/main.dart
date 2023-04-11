import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
     import 'package:untitled15/main1.dart';
import 'package:untitled15/main2.dart';
import 'package:untitled15/main3.dart';


void main() async{

  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
        home: Main(),
      );

    }
 }
