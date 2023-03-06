import 'package:amardesigner/Data/recentProjectData.dart';
import 'package:amardesigner/Screens/DashBoard/dashboard_page.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPhoto2 extends StatefulWidget {
  const EditPhoto2({super.key});

  @override
  State<EditPhoto2> createState() => _EditPhoto2State();
}

class _EditPhoto2State extends State<EditPhoto2> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    final List<String> imageList = [
      "assets/image/img4.PNG",
      "assets/image/img4.PNG",
      "assets/image/img4.PNG",
      "assets/image/img4.PNG",
      "assets/image/img4.PNG",
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
           decoration: BoxDecoration( image:DecorationImage(image: AssetImage("assets/image/bgi3.jpg",),fit: BoxFit.fill,opacity:0.4 )),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                          child: const Text(
                        "Edit Photo Information",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 30),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: const Text(
                          "Click the 'Done' button on top when finished",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.white,
                            ),
                            width: width * 0.9,
                            height: height * 0.28,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                enableInfiniteScroll: true,
                                enlargeCenterPage: true,
                                viewportFraction: 1,
                                autoPlay: true,
                              ),
                              items: imageList
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 20,
                                            right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                             boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Stack(
                                              fit: StackFit.expand,
                                              children: <Widget>[
                                                Image.asset(
                                                  e,
                                                  fit: BoxFit.cover,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),image:DecorationImage(image: AssetImage("assets/image/bgi3.jpg",),fit: BoxFit.fill,opacity:0.5 ),
                                 boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: width * 0.9,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 3.0),
                                              child: Text(
                                                "Title",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Category",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Style",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Country",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "City",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Pin Code",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(  255,  246,  6,  86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Link to Website",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 35,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(  255, 246, 6,  86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Keywords (Separated by comma)",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 50,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(  255,  246,   6, 86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.0),
                                                child: Text(
                                                  "Description",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 50,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Colors.black26),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    246,
                                                                    6,
                                                                    86)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.grey),
                                                width: width * 0.35,
                                                height: 35,
                                                child: const Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                )),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Get.toNamed(
                                                  Routes.getHomeRoute());
          //                                     Navigator.pushReplacement(
          // context, MaterialPageRoute(builder: (context) => DashboardPage()));
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: const Color.fromARGB(
                                                        255, 246, 6, 86)),
                                                width: width * 0.35,
                                                height: 35,
                                                child: const Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
