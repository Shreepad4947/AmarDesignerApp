import 'package:amardesigner/Data/InteriorDesigns.dart';
import 'package:amardesigner/Middleware/route.dart';
import 'package:amardesigner/Screens/DesignIdeas/BookConsultation.dart';
import 'package:amardesigner/Screens/DesignIdeas/GetQuote.dart';
import 'package:amardesigner/widgets/AppBar.dart';
import 'package:amardesigner/widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignIdeas2 extends StatefulWidget {
  const DesignIdeas2({super.key});

  @override
  State<DesignIdeas2> createState() => _DesignIdeas2State();
}

class _DesignIdeas2State extends State<DesignIdeas2> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const MyAppBar(title1: "Design ", title2: "Ideas"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("Showing 1316 result for",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: Colors.grey)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("Living Room Designs",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: width * 0.94,
                    height: height,
                    child: ListView.builder(
                        primary: false,
                        shrinkWrap: false,
                        // physics:NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: InteriorDesigns.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, bottom: 8),
                            child: Card(
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () {
                                      Get.toNamed(
                                          Routes.getDesignIdeas3dRoute());
                                    },
                                    child: SizedBox(
                                      height: height * 0.25,
                                      width: width * 0.9,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                        child: Image.asset(
                                            InteriorDesigns[index]["image"],
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      InteriorDesigns[index]['Info'],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
                                    child: SizedBox(
                                      width: width * 0.9,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Get.to(BookConsultation());
                                            },
                                            child: const Card(
                                                color: Colors.black87,
                                                child: Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                      "Book free consultation",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          fontSize: 13,
                                                          color: Colors.white)),
                                                )),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Get.to(GetQuote());
                                            },
                                            child: const Card(
                                                color: Color.fromARGB(
                                                    255, 246, 6, 86),
                                                child: Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text("Get Quote",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          fontSize: 13,
                                                          color: Colors.white)),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
