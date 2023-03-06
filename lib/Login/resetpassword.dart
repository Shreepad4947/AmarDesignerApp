// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:amardesigner/widgets/loading.dart';
import 'package:get/get.dart';

import '../Middleware/route.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  late String _email;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
      color: Colors.black,
      child: Align(alignment: Alignment.center,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
          // height: height,
          width: width ,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Form(
                key: _formKey,
                child: Align(alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Reset your password',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'We will send you a link to reset your password',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
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
                            labelText: 'Enter Your Email',
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.getSignUpRoute());
                            },
                            child: const Text('Back to Login',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 246, 6, 86))),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 246, 6, 86)),
                            onPressed: () async {
                              // if (_formKey.currentState!.validate()) {
                              //   _formKey.currentState!.save();
                              //   setState(() => isLoading = true);
                              //   try {
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
                              //         .sendPasswordResetEmail(email: _email)
                              //         .then((value) {
                              //       setState(() => isLoading = false);
                              //       ScaffoldMessenger.of(context)
                              //           .showSnackBar(
                              //         const SnackBar(
                              //           content: Text(
                              //               'Password reset email sent!'),
                              //         ),
                              //       );
                              //     });
                              //   } on FirebaseAuthException catch (e) {
                              //     setState(() => isLoading = false);
                              //     if (e.code == 'user-not-found') {
                              //       ScaffoldMessenger.of(context)
                              //           .showSnackBar(
                              //         const SnackBar(
                              //           content: Text(
                              //               'No user found for this email.'),
                              //         ),
                              //       );
                              //     } else if (e.code == 'invalid-email') {
                              //       ScaffoldMessenger.of(context)
                              //           .showSnackBar(
                              //         const SnackBar(
                              //           content: Text('Invalid email.'),
                              //         ),
                              //       );
                              //     } else {
                              //       ScaffoldMessenger.of(context)
                              //           .showSnackBar(
                              //         const SnackBar(
                              //           content:
                              //               Text('Something went wrong!'),
                              //         ),
                              //       );
                              //     }
                              //     return;
                              //   } catch (e) {
                              //     setState(() => isLoading = false);
                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       const SnackBar(
                              //         content: Text('An error occured!'),
                              //       ),
                              //     );
                              //     return;
                              //   }
                              // }
                            },
                            child: const Text('Send',
                                style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
