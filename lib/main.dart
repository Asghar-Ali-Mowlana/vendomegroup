import 'package:flutter/material.dart';
import 'package:universal_io/io.dart' as u;
import 'package:firebase_core/firebase_core.dart';

import 'package:vendomegroup/screens/signuppage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (u.Platform.operatingSystem == "android" ||
      u.Platform.operatingSystem == "ios") {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VendomeGroup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}
