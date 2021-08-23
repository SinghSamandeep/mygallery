import 'package:flutter/material.dart';
import 'package:jrs_project/screens/image_grid_view.dart';
import 'package:jrs_project/screens/image_large_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ImageGrid(),
    );
  }
}

