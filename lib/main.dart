import 'package:flutter/material.dart';
import 'package:sttper_ui_1/screen/home/view/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homescreen(),
      },
    ),
  );
}
