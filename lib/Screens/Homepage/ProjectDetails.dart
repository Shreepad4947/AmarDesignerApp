import 'package:amardesigner/Data/SearchData.dart';
import 'package:amardesigner/Screens/Homepage/ImageViewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:async';
import 'dart:io';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  int messageClick = 0;

  Future<void> share() async {
     Share.share("Mr. Himanshu's House,  Link : www.amardesigner.com",subject: "Check this Designs",);

  }

   

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Project Details",
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: Stack(children: [
        SizedBox(
          width: width,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: width,
                height: 150,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      "assets/image/imgtop.PNG",
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Mr. Himanshu's House",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Container(
                            child: const Text(
                              "Sector 107, Noida, Uttar Pradesh",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                        ]),
                    TextButton(
                      onPressed: () {
                        share();
                      },
                      child: const Icon(Icons.share, color:Color.fromARGB(255, 246, 6, 86) ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/image/profile.jpg',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Star wood works",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 13),
                  ),
                ],
              ),
              const Divider(height: 30, thickness: 1),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Project Info",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    const Icon(Icons.location_city_outlined,
                        color: Colors.grey),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Project Title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Container(
                          child: const Text(
                            "Mr. Himanshu's House",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.grey),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Container(
                          child: const Text(
                            "Noida, Uttar Pradesh, India",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    const Icon(Icons.attach_money_outlined, color: Colors.grey),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Project Cost",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Container(
                          child: const Text(
                            "₹ 10,00,000 - ₹ 20,00,000",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.info, color: Colors.grey),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Container(
                          width: width * 0.8,
                          child: const Text(
                            "We designed this minimal yet luxury apartment for our client. The main requirement was to have spaciaus house. It should be elegant yet cozy and practical space where one feel like home.",
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    height: height * 0.7,
                    width: width,
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: SearchData.length,
                        physics: const ScrollPhysics(
                            parent: NeverScrollableScrollPhysics()),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext ctxt, int index) {
                          return TextButton(
                            onPressed: () {
                              Get.to(Imageviewer());
                            },
                            child: Container(
                                width: width * 0.3,
                                height: width * 0.3,
                                child: Image.asset(
                                  SearchData[index]["image"],
                                  fit: BoxFit.fill,
                                )),
                          );
                        })),
              )
            ]),
          ),
        ),
        messageClick == 1
            ? Positioned(
                // top: height * 0.2,
                // left: 17,
                child: PopUpMessage(),
              )
            : Container(),
      ]),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
        child: SizedBox(
          width: width,
          child: SizedBox(
            width: width * 0.9,
            child: TextButton(
              onPressed: () {
                setState(() {
                  messageClick == 0 ? messageClick = 1 : messageClick = 0;
                });
              },
              child: const Card(
                  elevation: 3,
                  color: Color.fromARGB(255, 246, 6, 86),
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_sharp, size: 15, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          "Send Message",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget PopUpMessage() => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.6),
        child: Align(
          alignment: Alignment.center,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 30,
                      blurRadius: 30,
                      offset: const Offset(5, 5), // changes position of shadow
                    ),
                  ]),
              height: MediaQuery.of(context).size.height * 0.48,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Contact This Professional",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 6, 86))),
                    const SizedBox(height: 10),
                    const Text("To:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  Color.fromARGB(255, 177, 173, 174),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Star wood works",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Container(
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Carpenter  ",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text("Delhi",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ]),
                    const Text("Message:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12)),
                    const SizedBox(height: 8),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.grey)),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: TextField(
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                              hintText:
                                  'Tell this pro what you have in mind for your project. ',
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  overflow: TextOverflow.visible),
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              messageClick = 0;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text("Cancel",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12)),
                              )),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              messageClick = 0;
                            });
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Message Sent"),
                            ));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 246, 6, 86),
                                  border: Border.all(
                                      width: 1,
                                      color: const Color.fromARGB(
                                          255, 246, 6, 86))),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text("Next",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12)),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
      );
}
