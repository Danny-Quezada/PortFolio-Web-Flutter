import 'package:flutter/material.dart';
import 'package:web_desing/home_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {'/': (context) => HomePage()},
  ));
}
