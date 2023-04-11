import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
  import 'package:untitled15/main3.dart';




class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: [


            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: Center(
                child: TabBar(

                    tabs: [

                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      Tab(
                        icon: Icon(Icons.precision_manufacturing),
                      ),
                      Tab(
                        icon: Icon(Icons.check_circle_sharp),
                      ),

                    ]),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Center(
                child: TabBarView(children: [
                  Text("data no 1"),
                  Text("data no 2"),
                  Text("data no 3"),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}






















// https://jsonplaceholder.typicode.com/users