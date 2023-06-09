import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:caffiene/screens/common/landing_screen.dart';
import 'package:caffiene/screens/home_screen/dash_screen.dart';

class UserState extends StatelessWidget {
  const UserState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        // ignore: missing_return
        builder: (context, userSnapshot) {
          if (userSnapshot.connectionState == ConnectionState.waiting) {
            return const caffieneHomePage();
          } else if (userSnapshot.connectionState == ConnectionState.active) {
            if (userSnapshot.hasData) {
              //  print('The user is already logged in');
              return const caffieneHomePage();
            } else {
              // print('The user didn\'t login yet');
              return const LandingScreen();
            }
          } else {
            return const Center(
              child: Text('Error occured'),
            );
          }
        });
  }
}
