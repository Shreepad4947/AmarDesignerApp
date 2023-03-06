import 'package:amardesigner/Login/BasicInfo.dart';
import 'package:amardesigner/Login/SignInOtp.dart';
import 'package:amardesigner/Login/signUp.dart';
import 'package:amardesigner/Screens/DashBoard/dashboard_page.dart';
import 'package:amardesigner/Screens/Homepage/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:amardesigner/widgets/loading.dart';
import 'package:amardesigner/Middleware/route.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

var phone;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // runApp(SignInNum1());
  // runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fireInit = Firebase.initializeApp();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return GetMaterialApp(
      title: 'Amar Design',
      // initialRoute: Routes.routes,
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      // home:SignInNum(),
      // home:ProfileSettingsScreen(),
      // home: DashboardPage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Poppins',
      ),
      // home:phone == null ?
    );
  }
}
