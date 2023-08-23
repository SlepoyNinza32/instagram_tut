import 'package:flutter/material.dart';
import 'package:login_page_tutorial/login_page.dart';
import 'package:login_page_tutorial/main_page.dart';
import 'package:login_page_tutorial/profile_page.dart';
import 'package:login_page_tutorial/start_page.dart';

void main() async {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    ),
  );
}
