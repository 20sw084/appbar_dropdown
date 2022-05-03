
import 'package:flutter/material.dart';
import 'package:appbar_dropdown/appbar_dropdown.dart';

void main() {
  runApp( 
      MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            flexibleSpace: AppbarDropdown(
              items: [ for (var i=0;i<100;i++) "User $i" ],
              selected: "User 2",
              title: ( (user) => user.toString() ),
              onClick: ( (user) => print(user) ),
           ),
          ),
       ),
      ),
  );
}


