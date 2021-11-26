import 'package:edutech/app/binding/home_binding.dart';
import 'package:edutech/app/routes/app_pages.dart';
import 'package:edutech/app/ui/auth/auth_with_google.dart';
import 'package:edutech/app/ui/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3e8ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/logo1.png",
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.contain,
          
          ),
          SignInButton(
            Buttons.Google,
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
            text: "Sign up with Google" ,
            onPressed: () {
                signInWithGoogle().then((value) {
                  print("val is :");
                  print(value);
                  Get.offNamed(Routes.INITIAL);
                });
            },
          )
        ],
      ),
    );
  }
}
