import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/ui/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Edutech',
      home: Splash()
    );
  }
}