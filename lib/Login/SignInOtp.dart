
import 'package:amardesigner/Login/SignUpOtp.dart';
import 'package:amardesigner/Screens/Homepage/HomeScreen.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

enum LoginScreen { ShowEnterMobileNo, ShowEnterOtp }

class SignInNum extends StatefulWidget {
  @override
  _SignInNumState createState() => _SignInNumState();
}

class _SignInNumState extends State<SignInNum> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool isloading = false;
  bool verificationCompleted = false;
  bool usersignedIn = false;
  String userNumber = "";
  String finalOTP = "";

  LoginScreen currentState = LoginScreen.ShowEnterMobileNo;
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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

  // signIn(String email, String password) async {
  //   setState(() {
  //     isloading = true;
  //   });
  //   try {
  //     final uri = Uri.parse('https://etechnomate.com/gautam/login/');

  //     final response = await http.post(
  //       uri,
  //       body: <String, String>{'email': email, 'password': password},
  //     );
  //     int statusCode = response.statusCode;
  //     String responseBody = response.body;

  //     if (statusCode == 200) {
  //       setState(() {
  //         isloading = false;
  //       });
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text("SignIn Success"),
  //   ));
  //       print("success");
  //     }

  //     print(responseBody);
  //   } catch (e) {
  //     print("error");
  //   }
  // }

 

  Future<void> signIn() async {
    final apiUrl = Uri.parse('http://193.46.199.225:3000/user/register');
    final headers = {'Content-Type': 'application/json'};
    final jsonBody = {
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
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Sign In Successfully"),
        ));
        Get.off(const HomeScreen());
      } else {
        // Error handling
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // Error handling
      print('Error: $e');
    }
  }

  indicator() {
    return const Center(child: CircularProgressIndicator());
  }

  showSignInwidget(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // removes shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
                        left: 0,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, an1, an2) =>
                                        SignUpNum(),
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
                              child: Text("SignUp",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 0,
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
                                child: Text("SignIn",
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(height: 15),
                                  Form(
                                    key: globalFormKey,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.baseline,
                                          textBaseline:
                                              TextBaseline.ideographic,
                                          children: [
                                            Container(
                                                decoration: const BoxDecoration(
                                                    // border: Border(
                                                    //     bottom: BorderSide(
                                                    //         width: 1,
                                                    //         color:
                                                    //             Colors.grey))
                                                    ),
                                                width: 100,
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 4),
                                                  child: Text("Email",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 15)),
                                                )),
                                            const SizedBox(width: 10),
                                            Container(
                                              width: 200,
                                              child: TextField(
                                                style: const TextStyle(
                                                    decorationThickness: 0,
                                                    color: Colors.black54,
                                                    textBaseline: TextBaseline
                                                        .alphabetic),
                                                keyboardType:
                                                    TextInputType.name,
                                                controller: emailController,
                                                textAlign: TextAlign.start,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "   required",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Container(
                                        //         decoration: const BoxDecoration(
                                        //             border: Border(
                                        //                 bottom: BorderSide(
                                        //                     width: 1,
                                        //                     color: Colors.grey))),
                                        //         width: 100,
                                        //         child: const Padding(
                                        //           padding: EdgeInsets.only(
                                        //               bottom: 5.0, top: 19),
                                        //           child: Text("Phone",
                                        //               style: TextStyle(
                                        //                   fontWeight:
                                        //                       FontWeight.w600,
                                        //                   fontSize: 15)),
                                        //         )),
                                        //     Container(
                                        //       width: 200,
                                        //       child: TextField(
                                        //         style: const TextStyle(
                                        //             decorationThickness: 0,
                                        //             color: Colors.black54,
                                        //             textBaseline:
                                        //                 TextBaseline.alphabetic),
                                        //         keyboardType:
                                        //             TextInputType.number,
                                        //         controller: mobileNoController,
                                        //         textAlign: TextAlign.start,
                                        //         decoration: const InputDecoration(
                                        //           hintText: "   required",
                                        //           hintStyle: TextStyle(
                                        //               color: Colors.grey,
                                        //               fontSize: 13,
                                        //               fontWeight:
                                        //                   FontWeight.w400),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                        Row(
                                          children: [
                                            Container(
                                                decoration: const BoxDecoration(
                                                    // border: Border(
                                                    //     bottom: BorderSide(
                                                    //         width: 1,
                                                    //         color:
                                                    //             Colors.grey)
                                                    //             )
                                                    ),
                                                width: 100,
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, top: 19),
                                                  child: Text("Password",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 15)),
                                                )),
                                            const SizedBox(width: 10),
                                            Container(
                                              width: 200,
                                              child: TextField(
                                                // keyboardType:
                                                //     TextInputType.number,
                                                controller: passwordController,
                                                style: const TextStyle(
                                                    decorationThickness: 0,
                                                    color: Colors.black54,
                                                    textBaseline: TextBaseline
                                                        .alphabetic),
                                                textAlign: TextAlign.start,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText:
                                                      "   at least 8 character",
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
                                      ],
                                    ),
                                  ),
                                  Container(height: 50),
                                  Container(
                                    width: double.infinity,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Get.toNamed(Routes.getDashBoardRoute());
                                        signIn();
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
                                          "SIGN IN",
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
                                    child: Row(
                                      children: [
                                        Checkbox(
                                            value: true, onChanged: (bool) {}),
                                        const Text(
                                          "Remember me",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(height: 50),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Don’t have an account? ",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUpNum()));
                                        },
                                        child: const Text(
                                          "Sign up",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 246, 6, 86),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ],
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
                :
                //  currentState == LoginScreen.ShowEnterMobileNo
                //     ?
                showSignInwidget(context)));
    // showMobileNowidget(context)));
    //     :
    // showOTPWidget(width)));
  }
}
