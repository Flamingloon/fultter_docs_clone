import 'package:flutter/material.dart';
import 'package:fultter_docs_clone/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fultter_docs_clone/repository/auth_repository.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);
  void signInWithgoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
          onPressed: () => signInWithgoogle(ref),
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
