
import 'package:flutter/material.dart';
import 'package:appbar_dropdown/appbar_dropdown.dart';


class TestData {
  final String title;

  TestData(this.title);

}


void main() {
  runApp( 
      MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            flexibleSpace: AppbarDropdown<TestData>(
              items: [ for (var i=0;i<100;i++) TestData("User $i") ],
              selected: TestData("User 2"),
              title: ( (user) => user.title ),
              // ignore: avoid_print
              onClick: ( (user) => print(user.title) ),
           ),
          ),
       ),
      ),
  );
}


