import 'package:flutter/material.dart';
import 'package:fultter_docs_clone/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Image.asset('assets/images/g-logo-2.png', height: 20,),
          label: const Text(
            'sign in with google',
            style: TextStyle(color: blackcolor),
          ),

      style: ElevatedButton.styleFrom(
        primary: whitecolor,
        minimumSize: Size(150,50),
      ),

      ),
    ));
  }
}
