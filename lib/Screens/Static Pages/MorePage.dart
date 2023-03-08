import 'package:amardesigner/Login/SignInOtp.dart';
import 'package:amardesigner/Screens/DesignIdeas/DesignIdeas1.dart';
import 'package:amardesigner/Screens/DesignIdeas/DesignIdeas2.dart';
import 'package:amardesigner/Screens/Static%20Pages/AboutUs.dart';
import 'package:amardesigner/Screens/Static%20Pages/ContactUs.dart';
import 'package:amardesigner/Screens/Static%20Pages/OurServices.dart';
import 'package:amardesigner/Screens/Static%20Pages/PrivacyPolicy.dart';
import 'package:amardesigner/Screens/Static%20Pages/TermsCondition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("More", style: TextStyle(fontWeight: FontWeight.w600,)),
              TextButton(
                onPressed: () {
                  Get.to(SignInNum());
                },
                child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 246, 6, 86))),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Icon(Icons.person_pin,
                              color: Color.fromARGB(255, 246, 6, 86)),
                          Text(" Login / SignUp",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 246, 6, 86),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12)),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(DesignIdeas2());
                        },
                        child: Row(
                          children: [
                            Card(
                              elevation: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  'assets/image/img5.PNG',
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Recent Posts",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.navigate_next_outlined)
                    ],
                  ),
                  const Divider(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(DesignIdeas1());
                        },
                        child: Row(
                          children: [
                            Card(
                              elevation: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  'assets/image/img6.PNG',
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Design Ideas",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.navigate_next_outlined)
                    ],
                  ),
                  const Divider(height: 20,),
                  TextButton(
                    onPressed: () {
                      Get.to(const AboutUs());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("About Us",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Icon(Icons.navigate_next_outlined, color: Colors.black)
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(const OurServices());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Our Services",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Icon(Icons.navigate_next_outlined, color: Colors.black)
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(const ContactUs());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Contact Us",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Icon(Icons.navigate_next_outlined, color: Colors.black)
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(const TermsCondition());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Terms And Conditions",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Icon(Icons.navigate_next_outlined, color: Colors.black)
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(const PrivacyPolicy());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Privacy Policy",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Icon(Icons.navigate_next_outlined, color: Colors.black)
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text("Frequently Ask Questions",
                  //         style: TextStyle(fontWeight: FontWeight.w600)),
                  //     Icon(Icons.navigate_next_outlined)
                  //   ],
                  // ),
                  // const Divider(height: 20),
                ],
              ),
            ),
          ),
        ));
  }
}
