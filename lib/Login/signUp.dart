// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:amardesigner/widgets/loading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';

import '../Middleware/route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  late String _username, _email, _password = '';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body:
            // main screen
            SizedBox(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // top space box on white box
              // SizedBox(
              //   height: height * 0.3,
              //   width: width * 0.08,
              // ),
              // horizontal boxes start with space box
              Row(
                children: [
                  // SizedBox(
                  //   height: height * 0.3,
                  //   width: width * 0.,
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
                                child: Text("Sign Up",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.clip)),
                              ),
                            ),
                            // SizedBox(
                            //   height: height * 0.01,
                            //   width: width * 0.4,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Text("Already have an account?",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Get.toNamed(Routes.getSignInRoute()),
                                  child: const Text(' Sign In',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86))),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              // validator: (value) {
                              //   if (value!.trim().isEmpty) {
                              //     return 'Please enter a username';
                              //   } else if (value.length < 3 ||
                              //       value.length > 12) {
                              //     return 'Username must be between 3 and 12 characters';
                              //   } else if (value.contains(' ')) {
                              //     return 'Username cannot contain spaces';
                              //   }
                              //   return null;
                              // },
                              onSaved: (value) => _username = value!,
                              decoration: const InputDecoration(
                                labelText: 'Username',
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              // validator: (value) {
                              //   if (!RegExp(
                              //           r"^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@((?:[a-zA-Z0-9-]+\.)+(?:[a-zA-Z]{2,}))$")
                              //       .hasMatch(value!.trim())) {
                              //     return 'Please enter a valid email';
                              //   }
                              //   return null;
                              // },
                              onSaved: (value) => _email = value!.trim(),
                              decoration: const InputDecoration(
                                labelText: 'Email',
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              // validator: (value) {
                              //   if (value!.contains(' ')) {
                              //     return 'Password cannot contain spaces';
                              //   } else if (value.length < 6) {
                              //     return 'Password must be at least 6 characters long';
                              //   }
                              //   return null;
                              // },
                              onChanged: (value) => _password = value,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              // validator: (value) {
                              //   if (value != _password) {
                              //     return 'Passwords do not match';
                              //   }
                              //   return null;
                              // },
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Confirm Password',
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 246, 6, 86)),
                              onPressed: () async {
                                // if (_formKey.currentState!.validate()) {
                                //   _formKey.currentState!.save();
                                //   setState(() => isLoading = true);
                                //   try {
                                //     await _firestore
                                //         .collection('users')
                                //         .where('username', isEqualTo: _username)
                                //         .get()
                                //         .then((value) {
                                //       if (value.docs.isNotEmpty) {
                                //         setState(() => isLoading = false);
                                //         ScaffoldMessenger.of(context)
                                //             .showSnackBar(const SnackBar(
                                //                 content: Text(
                                //                     'The username is already in use by another account.')));
                                //         return;
                                //       }
                                //     });
                                //     List<String> signInMethods = await _auth
                                //         .fetchSignInMethodsForEmail(_email);
                                //     if (signInMethods.contains('google.com') &&
                                //         !signInMethods.contains('password')) {
                                //       setState(() => isLoading = false);
                                //       Future.delayed(const Duration())
                                //           .then((value) => showDialog(
                                //                 context: context,
                                //                 builder:
                                //                     (BuildContext context) {
                                //                   return const SimpleDialog(
                                //                       insetPadding:
                                //                           EdgeInsets.all(17),
                                //                       titlePadding:
                                //                           EdgeInsets.all(17),
                                //                       titleTextStyle: TextStyle(
                                //                           fontSize: 17,
                                //                           color: Colors
                                //                               .deepPurple),
                                //                       title: Text(
                                //                           'This email is associated with a Google sign in. Please sign in with Google and add a new password in your profile settings to link your account with an email and password login option.\n\nThis can also be caused if you have signed in with Google before verifying your email.',
                                //                           textAlign:
                                //                               TextAlign.left));
                                //                 },
                                //               ));
                                //       return;
                                //     }
                                //     await _auth
                                //         .createUserWithEmailAndPassword(
                                //           email: _email,
                                //           password: _password,
                                //         )
                                //         .then((value) => Get.toNamed(
                                //             Routes.getChooseUserTypeRoute()));
                                //   } on FirebaseAuthException catch (error) {
                                //     setState(() => isLoading = false);
                                //     ScaffoldMessenger.of(context).showSnackBar(
                                //         SnackBar(
                                //             content: Text(error.message ??
                                //                 'Please ensure your email is valid.')));
                                //     return;
                                //   } catch (error) {
                                //     setState(() => isLoading = false);
                                //     ScaffoldMessenger.of(context).showSnackBar(
                                //         const SnackBar(
                                //             content:
                                //                 Text('Something went wrong!')));
                                //     return;
                                //   }
                                // }
                              },
                              child: const Text('Sign Up',
                                  style: TextStyle(fontSize: 16)),
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
                                //     final QuerySnapshot resultQuery =
                                //         await _firestore
                                //             .collection('users')
                                //             .where('email',
                                //                 isEqualTo: result.user?.email)
                                //             .get();
                                //     if (resultQuery.docs.isEmpty) {
                                //       await _firestore
                                //           .collection('users')
                                //           .doc(result.user?.uid)
                                //           .set({
                                //         'username':
                                //             result.user?.email?.split('@')[0],
                                //         'email': result.user?.email,
                                //         'createdAt': Timestamp.now(),
                                //         'address': '',
                                //         'phoneNumber': '',
                                //       });
                                //     }
                                //   }).then((value) =>
                                //           Get.toNamed(Routes.getHomeRoute()));
                                // } catch (error) {
                                //   setState(() => isLoading = false);
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //       const SnackBar(
                                //           content:
                                //               Text('Something went wrong!')));
                                //   return;
                                // }
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                  Colors.grey.withOpacity(0.2),
                                ),
                                maximumSize: MaterialStateProperty.all(
                                  const Size(220, 50),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(220, 50),
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
                  // SizedBox(
                  //   height: height * 0.3,
                  //   width: width * 0.13,
                  // ),
                  // if (isLoading) const Loading(),
                ],
              ),
              // SizedBox(
              //   height: height * 0.05,
              //   width: width * 0.3,
              // ),
            ],
          ),
        ));
  }
}
