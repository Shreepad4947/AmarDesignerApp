// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_firebase_login_signup/widgets/loading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:amardesigner/widgets/loading.dart';

import '../Middleware/route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body:
            // main screen
            SizedBox(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top space box on white box
              // SizedBox(
              //   height:height*0.15,
              //   width:width*0.4,
              // ),
              // horizontal boxes start with space box
              Column(
                children: [
                  // SizedBox(
                  //   height:height*0.7,
                  //   width:width*0.13,
                  // ),

                  // main white box
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    width: width,
                    height: height,
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 3),
                                child: Text("Log In",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.clip)),
                              ),
                            ),
                            // SizedBox(
                            //     height:height*0.01,
                            //     width:width*0.4,
                            //     ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Text("New User?",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Get.toNamed(Routes.getSignUpRoute()),
                                  child: const Text(' Sign up',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86))),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 3),
                              child: TextFormField(
                                validator: (value) {
                                  if (!RegExp(
                                          r"^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@((?:[a-zA-Z0-9-]+\.)+(?:[a-zA-Z]{2,}))$")
                                      .hasMatch(value!.trim())) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                                onSaved: (value) => _email = value!.trim(),
                                decoration: const InputDecoration(
                                  labelText: 'Email Address',
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 3),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.contains(' ')) {
                                    return 'Password cannot contain spaces';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                                onSaved: (value) => _password = value!,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            const SizedBox(height: 35),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () => Get.toNamed(
                                      Routes.getresetpasswordRoute()),
                                  child: const Text('Forget You Password ?',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86))),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 246, 6, 86)),
                                    onPressed: () async {
                                      // if (_formKey.currentState!.validate()) {
                                      //   _formKey.currentState!.save();
                                      //   setState(() => isLoading = true);
                                      //   try {
                                      //     List<String> signInMethods =
                                      //         await _auth.fetchSignInMethodsForEmail(_email);
                                      //     if (signInMethods.contains('google.com') &&
                                      //         !signInMethods.contains('password')) {
                                      //       setState(() => isLoading = false);
                                      //       Future.delayed(const Duration())
                                      //           .then((value) => showDialog(
                                      //                 context: context,
                                      //                 builder: (BuildContext context) {
                                      //                   return const SimpleDialog(
                                      //                       insetPadding: EdgeInsets.all(17),
                                      //                       titlePadding: EdgeInsets.all(17),
                                      //                       titleTextStyle: TextStyle(
                                      //                           fontSize: 17,
                                      //                           color: Colors.deepPurple),
                                      //                       title: Text(
                                      //                           'This email is associated with a Google sign in. Please sign in with Google and add a new password in your profile settings to link your account with an email and password login option.\n\nThis can also be caused if you have signed in with Google before verifying your email.',
                                      //                           textAlign: TextAlign.left));
                                      //                 },
                                      //               ));
                                      //       return;
                                      //     }
                                      //     await _auth
                                      //         .signInWithEmailAndPassword(
                                      //           email: _email,
                                      //           password: _password,
                                      //         )
                                      //         .then((value) =>  Get.toNamed(Routes.getHomeRoute()));
                                      //   } on FirebaseAuthException catch (e) {
                                      //     setState(() => isLoading = false);
                                      //     if (e.code == 'user-not-found') {
                                      //       ScaffoldMessenger.of(context).showSnackBar(
                                      //           const SnackBar(
                                      //               content: Text(
                                      //                   'No user found for this email.')));
                                      //     } else if (e.code == 'wrong-password') {
                                      //       ScaffoldMessenger.of(context).showSnackBar(
                                      //           const SnackBar(
                                      //               content:
                                      //                   Text('The password is incorrect.')));
                                      //     } else {
                                      //       ScaffoldMessenger.of(context).showSnackBar(
                                      //           SnackBar(
                                      //               content: Text(e.message ??
                                      //                   'Invalid email or password.')));
                                      //     }
                                      //     return;
                                      //   } catch (e) {
                                      //     setState(() => isLoading = false);
                                      //     ScaffoldMessenger.of(context).showSnackBar(
                                      //         const SnackBar(
                                      //             content: Text('Something went wrong!')));
                                      //     return;
                                      //   }
                                      // }
                                    },
                                    child: const Text('Log In',
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            const Text(
                              "--------------- or ---------------",
                              style: TextStyle(color: Colors.black26),
                            ),
                            const SizedBox(height: 20),

                            TextButton(
                              onPressed: () async {
                                // setState(() => isLoading = true);
                                // try {
                                //   final GoogleSignInAccount? googleUser =
                                //       await GoogleSignIn().signIn();
                                //   final GoogleSignInAuthentication? googleAuth =
                                //       await googleUser?.authentication;
                                //   await _auth
                                //       .signInWithCredential(
                                //           GoogleAuthProvider.credential(
                                //     idToken: googleAuth?.idToken,
                                //     accessToken: googleAuth?.accessToken,
                                //   ))
                                //       .then((result) async {
                                //     final QuerySnapshot resultQuery = await _firestore
                                //         .collection('users')
                                //         .where('email', isEqualTo: result.user?.email)
                                //         .get();
                                //     if (resultQuery.docs.isEmpty) {
                                //       await _firestore
                                //           .collection('users')
                                //           .doc(result.user?.uid)
                                //           .set({
                                //         'username': result.user?.email?.split('@')[0],
                                //         'email': result.user?.email,
                                //         'createdAt': Timestamp.now(),
                                //         'address': '',
                                //         'phoneNumber': '',
                                //       });
                                //     }
                                //   }).then((value) => Get.toNamed(Routes.getHomeRoute()));
                                // } catch (error) {
                                //   setState(() => isLoading = false);
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //       const SnackBar(
                                //           content: Text('Something went wrong!')));
                                //   return;
                                // }
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                  Colors.grey.withOpacity(0.2),
                                ),
                                maximumSize: MaterialStateProperty.all(
                                  const Size(200, 40),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(200, 40),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "image/google-icon.svg",
                                    height: 30,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('Sign in with Google',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            const Text(
                                "protected by reCAPTCHA and subject to Amardesign",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),

                  // SizedBox(
                  //   // height: height*0.35,
                  //   width: width,
                  //   child: Container(
                  //     color: Colors.black,
                  //     child: Column(
                  //       crossAxisAlignment:CrossAxisAlignment.center,
                  //       children: const [
                  //       Text("Amar Designer",
                  //       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  //       SizedBox(height:10),
                  //       Text("One tool for your whole team needs",textAlign: TextAlign.center,
                  //       style: TextStyle( fontWeight: FontWeight.w100,color: Colors.white,fontSize: 30),),
                  //       SizedBox(height:10),
                  //       Text(" we are Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                  //       ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10),),
                  //      SizedBox(height:10),
                  //       Text("3k people join us, Now your turn"
                  //       ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
                  //     ]),
                  //   ),
                  // ),
                  // if (isLoading) const Loading(),
                ],
              ),
              //   SizedBox(
              //   height:height*0.15,
              //   width:width*0.4,
              // ),
            ],
          ),
        ));
  }
}
