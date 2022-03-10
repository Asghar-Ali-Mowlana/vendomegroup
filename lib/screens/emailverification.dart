import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vendomegroup/screens/user/userhomepage.dart';

class EmailVerification extends StatefulWidget {
  //const OTPVerification({ Key? key }) : super(key: key);
  /*final String name;
  final String email;
  final String username;
  final String contactNumber;
  final String password;

  OTPVerification(
      this.name, this.email, this.username, this.contactNumber, this.password);*/

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final auth = FirebaseAuth.instance;
  User? user;
  Timer? timer;

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await user!.reload();
    if (user!.emailVerified) {
      timer!.cancel();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UserHomePage()));
    }
  }

  @override
  void initState() {
    user = auth.currentUser;
    user!.sendEmailVerification();
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        title: Text(
          "SignUp Verification",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            child: Text(
                "An email has been sent to ${user!.email} please verify",
                style: TextStyle(color: Colors.white, fontSize: 20))),
      ),
    );
  }
}
