import 'package:edutech/app/binding/home_binding.dart';
import 'package:edutech/app/ui/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){

        Get.to(HomePage(),binding: HomeBinding());
      }, child: Text("text"),
      ),
    );
  }
}