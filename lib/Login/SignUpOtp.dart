import 'dart:convert';

import 'package:amardesigner/Login/BasicInfo.dart';
import 'package:amardesigner/Login/SignInOtp.dart';
import 'package:amardesigner/Screens/Homepage/HomeScreen.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

enum LoginScreen { ShowEnterMobileNo, ShowEnterOtp }

class SignUpNum extends StatefulWidget {
  @override
  _SignUpNumState createState() => _SignUpNumState();
}

class _SignUpNumState extends State<SignUpNum> {
  bool isloading = false;
  bool verificationCompleted = false;
  bool usersignedIn = false;
  String userNumber = "";
  String finalOTP = "";

  LoginScreen currentState = LoginScreen.ShowEnterMobileNo;
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<String> _otpList = List.generate(6, (_) => "");
  final _focusNode = List.generate(6, (_) => FocusNode());
  final _textController = List.generate(6, (_) => TextEditingController());

  FirebaseAuth _auth = FirebaseAuth.instance;
  int intValue = 0;

  String verificationID = "";

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 6; i++) {
      _textController[i].addListener(() {
        if (_textController[i].text.length == 1 && i < 5) {
          FocusScope.of(context).requestFocus(_focusNode[i + 1]);
        }
        setState(() {
          _otpList[i] = _textController[i].text;
        });
      });
    }
  }

  

  Future<void> SignUp() async {
    final apiUrl = Uri.parse('http://193.46.199.225:3000/user/register');
    final headers = {'Content-Type': 'application/json'};
    final jsonBody = {
      'name': usernameController.text,
      'mobile': mobileNoController.text,
      "email": emailController.text,
      "password": passwordController.text
    };
    print(jsonBody);

    try {
      final response = await http.post(apiUrl,
          headers: headers, body: json.encode(jsonBody));
      if (response.statusCode == 200) {
        // Success
        print(response.body);
        ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Sign Up Successfully"),
                            ));
        Get.off(BasicInfo());
      } else {
        // Error handling
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // Error handling
      print('Error: $e');
    }
  }

  verifyPhoneNum() async {
    // // setState(() {
    // //   isloading = true;
    // // });

    // // await _auth.verifyPhoneNumber(

    // //     phoneNumber: "+91${mobileNoController.text}",
    // //     verificationCompleted: (AuthCredential phoneAuthCredential) async {
    // //       setState(() {
    // //         isloading = false;
    // //         verificationCompleted = true;
    // //       });
    // //       print(phoneAuthCredential.providerId);
    // //     },
    // //     verificationFailed: (verificationFailed) {
    // //       setState(() {
    // //         isloading = false;
    // //       });
    // //       print(verificationFailed);
    // //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    // //         content: Text("OTP limit Exeeded"),
    // //       ));
    // //     },
    // //     codeSent: (verificationID, resendingToken) async {
    // //       setState(() {
    // //         isloading = false;
    // //         currentState = LoginScreen.ShowEnterOtp;
    // //         this.verificationID = verificationID;
    // //       });
    // //     },
    // //     codeAutoRetrievalTimeout: (verificationID) async {});
    //       /
  }

  verifyOtp_SignUp() {
    // // setState(() {
    // //   isloading = true;
    // // });
    // // AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
    // //   verificationId: verificationID,
    // //   smsCode: finalOTP,
    // // );
    // // signInwithPhoneAuthCred(phoneAuthCredential, usernameController.text);
    // /
  }
// /
//   // Future<User?> signInwithPhoneAuthCred(
//   //     AuthCredential phoneauthCredential, String usernameController) async {
//   //   FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   //   try {
//   //     Map<String, String> userInfoMap = {
//   //       "phone": mobileNoController.text,
//   //     };

//   //     UserCredential userCrendetial =
//   //         await _auth.signInWithCredential(phoneauthCredential);

//   //         final uri = Uri.parse('https://etechnomate.com/gautam/login/');

//   //     final response = await http.post(
//   //       uri,
//   //       body: <String, String>{'name': usernameController,
//   //                              'mobile': mobileNoController.text,
//   //                             'email': emailController.text,
//   //                             'password': passwordController.text},
//   //     );
//   //     int statusCode = response.statusCode;
//   //     String responseBody = response.body;

//   //     userCrendetial.user!.updateDisplayName(usernameController);

//   //     if (userCrendetial.user != null && statusCode == 200) {
//   //       setState(() {
//   //         isloading = false;
//   //       });
//   //      print("Success signUp");
//   //       SharedPreferences prefs = await SharedPreferences.getInstance();
//   //       prefs.setString('phone', '');
//   //       // userNumber = mobileNoController.text;
//   //       userNumber = mobileNoController.text;
//   //       Navigator.pushReplacement(
//   //           context, MaterialPageRoute(builder: (context) => const BasicInfo()));
//   //       setState(() {
//   //         usersignedIn = true;
//   //       });
//   //     }
//   //   } on FirebaseAuthException catch (e) {
//   //     print(e.message);
//   //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//   //       content: Text("Some Error occured ,Try Again"),
//   //     ));
//   //     Navigator.pushReplacement(
//   //         context, MaterialPageRoute(builder: (context) => SignInNum()));
//   //   }
//   //   return null;
//   // }

  indicator() {
    return const Center(child: CircularProgressIndicator());
  }

  showMobileNowidget(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Get.toNamed(Routes.getDashBoardRoute())},
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, an1, an2) =>
                                        SignInNum(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                            width: 160,
                            height: 40,
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text("   SignIn",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 160,
                              height: 40,
                              child: const Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text("SignUp",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          )),
                    ],
                  )),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                    padding: const EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 320,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(height: 15),
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.ideographic,
                                        children: [
                                          Container(
                                              decoration: const BoxDecoration(
                                                  // border: Border(
                                                  //     bottom: BorderSide(
                                                  //         width: 1,
                                                  //         color: Colors.grey))
                                                  ),
                                              width: 100,
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.5),
                                                child: Text("Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                              )),
                                          SizedBox(width: 10),
                                          Container(
                                            width: 200,
                                            child: TextField(
                                              keyboardType: TextInputType.name,
                                              controller: usernameController,
                                              style: TextStyle(
                                                  decorationThickness: 0,
                                                  color: Colors.black54,
                                                  textBaseline:
                                                      TextBaseline.alphabetic),
                                              textAlign: TextAlign.start,
                                              // style:TextStyle(color: Colors.red,height: 0),
                                              decoration: const InputDecoration(
                                                hintText: "   required",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.ideographic,
                                        children: [
                                          Container(
                                              decoration: const BoxDecoration(
                                                  // border: Border(
                                                  //     bottom: BorderSide(
                                                  //         width: 1,
                                                  //         color: Colors.grey))
                                                  ),
                                              width: 100,
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.5),
                                                child: Text("Email",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                              )),
                                          SizedBox(width: 10),
                                          Container(
                                            width: 200,
                                            child: TextField(
                                              keyboardType: TextInputType.name,
                                              controller: emailController,
                                              style: const TextStyle(
                                                  decorationThickness: 0,
                                                  color: Colors.black54,
                                                  textBaseline:
                                                      TextBaseline.alphabetic),
                                              textAlign: TextAlign.start,
                                              decoration: const InputDecoration(
                                                hintText: "   required",
                                                hintStyle: TextStyle(
                                                    textBaseline: TextBaseline
                                                        .ideographic,
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              decoration: const BoxDecoration(
                                                  // border: Border(
                                                  //     bottom: BorderSide(
                                                  //         width: 1,
                                                  //         color: Colors.grey))
                                                  ),
                                              width: 100,
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 5.0, top: 17),
                                                child: Text("Phone",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                              )),
                                          SizedBox(width: 10),
                                          Container(
                                            width: 200,
                                            child: TextFormField(
                                              style: TextStyle(
                                                  decorationThickness: 0,
                                                  color: Colors.black54,
                                                  textBaseline:
                                                      TextBaseline.alphabetic),
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: mobileNoController,
                                              textAlign: TextAlign.start,
                                              decoration: const InputDecoration(
                                                hintText: "   required",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              decoration: const BoxDecoration(
                                                  // border: Border(
                                                  //     bottom: BorderSide(
                                                  //         width: 1,
                                                  //         color: Colors.grey))
                                                  ),
                                              width: 100,
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 5.0, top: 17),
                                                child: Text("Password",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                              )),
                                          SizedBox(width: 10),
                                          Container(
                                            width: 200,
                                            child: TextFormField(
                                              // keyboardType:
                                              //     TextInputType.number,
                                              controller: passwordController,
                                              textAlign: TextAlign.start,
                                              decoration: const InputDecoration(
                                                hintText:
                                                    "   at least 8 character",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                    decoration:
                                                        TextDecoration.none,
                                                    decorationThickness: 0,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(height: 50),
                                  Container(
                                    width: double.infinity,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // isloading = true;
                                          // verifyPhoneNum();
                                          SignUp();
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(1),
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: const Color.fromARGB(
                                              255, 246, 6, 86),
                                        ),
                                        child: const Text(
                                          "SIGN UP",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    color: Colors.transparent,
                                    child: TextButton(
                                      child: const Text(
                                        "or",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(height: 10),
                                  Container(
                                    width: double.infinity,
                                    height: 45,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                "Continue With Apple",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: Image.asset(
                                                  "assets/image/Logo/apple.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(height: 10),
                                  Container(
                                    width: double.infinity,
                                    height: 45,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                "Continue With Facebook",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: Image.asset(
                                                  "assets/image/Logo/facebook.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(height: 10),
                                  Container(
                                    width: double.infinity,
                                    height: 45,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                "Continue With Google",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: Image.asset(
                                                  "assets/image/Logo/google.jpg"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(height: 30),
                                  const Text(
                                    "By clicking Sign up, Continue with Facebook, Continue with Google or Continue with Apple, you agree to our Terms and Conditions and Privacy Statement.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showOTPWidget(context) {
    return Center(
      child: ListView(
          padding: const EdgeInsets.all(0.0),
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    // width: context * 0.9,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Image.asset(('assets/image/OTP.PNG')),
                          // width: context * 0.9,
                          height: 200,
                        ),
                        Container(height: 15),
                        Container(
                          width: 220,
                          child: const Text(
                            "OTP Verification",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Enter the OTP sent to ",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            Text(mobileNoController.text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          ],
                        ),
                        Container(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                6,
                                (index) => SizedBox(
                                  width: 40.0,
                                  child: TextField(
                                    controller: _textController[index],
                                    focusNode: _focusNode[index],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 246, 6, 86),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(height: 30),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Didn't you receive the OTP? ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                              Text("Resend It",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 246, 6, 86),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                            ],
                          ),
                        ),
                        Container(height: 30),
                        Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 246, 6, 86),
                            ),
                            child: TextButton(
                                child: const Text(
                                  "VERIFY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                onPressed: () {
                                  //                         Navigator.pushReplacement(
                                  // context, MaterialPageRoute(builder: (context) => const BasicInfo()));

                                  setState(() {
                                    finalOTP = _otpList.join();
                                    // print(finalOTP);
                                  });
                                  verifyOtp_SignUp();
                                })),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: isloading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : currentState == LoginScreen.ShowEnterMobileNo
                    ? showMobileNowidget(context)
                    // ));
                    : showOTPWidget(context)));
  }
}
