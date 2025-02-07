import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pure_aqua/screens/home_page.dart';

import 'package:pure_aqua/screens/initial_page.dart';
import 'package:pure_aqua/screens/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
  ));

  runApp(MaterialApp(
    home: HomePage(),
  ));
}
