import "package:amardesigner/Data/SearchData.dart";
import "package:amardesigner/Screens/Homepage/ProfessionalProfile.dart";
import "package:amardesigner/widgets/AppBar.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:popup_card/popup_card.dart";

class FindProfessional extends StatefulWidget {
  const FindProfessional({super.key});

  @override
  State<FindProfessional> createState() => _FindProfessionalState();
}

class _FindProfessionalState extends State<FindProfessional> {
  int filterTap = 0;
  int LocationTap = 0;
  int ProCategory = 0;
  int MessegeButton = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBar(title1: "Find ", title2: "Professionals"),
        body: Stack(children: [
          Container(
            height: height,
            color: Colors.grey[200],
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 246, 6, 86),
                    // margin: const EdgeInsetsDirectional.only(start: 10,end:10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Get matched with local professionals",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Answer a few questions and we’ll put you in touch with pros who can help",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width * 0.9,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: width * 0.35,
                                    // padding: const EdgeInsets.symmetric(
                                    //     horizontal: 15),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEDEDF0),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(8)),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        hintText: '1300',
                                        hintStyle: TextStyle(fontSize: 13),
                                        prefixIcon: Icon(
                                          Icons.location_on_outlined,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(8)),
                                      ),
                                      child: const Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("Get Started",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white)),
                                          )))
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 11.0, bottom: 10, left: 0, right: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          Card(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (filterTap == 0) {
                                    filterTap = 1;
                                    LocationTap == 0;
                                    ProCategory == 0;
                                  } else if (filterTap == 1 ||
                                      LocationTap == 1 ||
                                      ProCategory == 1) {
                                    filterTap = 0;
                                    LocationTap = 0;
                                    ProCategory == 0;
                                  }
                                });
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.filter_list_outlined),
                                  Text(" Filter",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (LocationTap == 0) {
                                    LocationTap = 1;
                                    filterTap = 0;
                                    ProCategory = 0;
                                  } else if (filterTap == 1 ||
                                      LocationTap == 1 ||
                                      ProCategory == 1) {
                                    LocationTap = 0;
                                    filterTap = 0;
                                    ProCategory == 0;
                                  }
                                });
                              },
                              child: const Row(
                                children: [
                                  Text("Location",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (ProCategory == 0 || 
                                  (LocationTap == 1 || filterTap == 1)) {
                                    ProCategory = 1;
                                  } else if (filterTap == 1 ||
                                      LocationTap == 1 ||
                                      ProCategory == 1) {
                                    LocationTap = 0;
                                    filterTap = 0;
                                    ProCategory = 0;
                                  }
                                });
                              },
                              child: const Row(
                                children: [
                                  Text("Pro Category",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("HighLights",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("Languages",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("Rating",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("Sort",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: SearchData.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Padding(
                            padding:  const EdgeInsets.only(
                                bottom: 10, left: 5, right: 5),
                            child: TextButton(
                              onPressed: () {
                                                Get.to(const ProfessionalProfile());
                                              },
                              child: Card(
                                color: Colors.white,
                                child: Stack(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width,
                                        height: 200,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.asset(
                                              SearchData[index]["image"],
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 40),
                                                child: Text(
                                                    SearchData[index]["title"],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18)),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.star,
                                                        color: Colors.yellow[700],
                                                        size: 20),
                                                    const SizedBox(width: 5),
                                                    Container(
                                                        width: width * 0.6,
                                                        child: const Text(
                                                            "5.0 (162 Reviews)",
                                                            overflow:
                                                                TextOverflow.clip,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .grey))),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Icon(Icons.location_on,
                                                        color: Colors.black,
                                                        size: 20),
                                                    const SizedBox(width: 5),
                                                    Container(
                                                        width: width * 0.6,
                                                        child: Text(
                                                            SearchData[index]
                                                                ["address"],
                                                            overflow:
                                                                TextOverflow.clip,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .grey))),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: width,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.9,
                                                      child: TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            MessegeButton = 1;
                                                          });
                                                        },
                                                        child: const Card(
                                                            color: Color.fromARGB(
                                                                255, 246, 6, 86),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets.all(
                                                                      6.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .email_sharp,
                                                                      size: 12,
                                                                      color: Colors
                                                                          .white),
                                                                  SizedBox(
                                                                      width: 5),
                                                                  Text(
                                                                    "Send Message",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                  ),
                                                                ],
                                                              ),
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Positioned(
                                    top: 160,
                                    left: 20,
                                    child: CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.grey,
                                        backgroundImage:
                                            AssetImage("assets/image/LoGo.jpg")),
                                  ),
                                ]),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          MessegeButton == 1
              ? Container(
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
                                offset: const Offset(
                                    5, 5), // changes position of shadow
                              ),
                            ]),
                        height: MediaQuery.of(context).size.height * 0.48,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 15),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Star wood works",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Container(
                                          child: const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Carpenter  ",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                              ),
                                              Text("Delhi",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12))
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
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
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
                                        MessegeButton = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 1, color: Colors.grey)),
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
                                        MessegeButton = 0;
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text("Message Sent"),
                                      ));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color.fromARGB(
                                                255, 246, 6, 86),
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
                )
              : Container(),
          filterTap == 1
              ? Positioned(
                  bottom: kBottomNavigationBarHeight - kToolbarHeight,
                  child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 30,
                          blurRadius: 30,
                          offset:
                              const Offset(0, -5), // changes position of shadow
                        ),
                      ]),
                      width: width,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.filter_list_outlined),
                                    SizedBox(width: 10),
                                    Text("Filter",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        filterTap = 0;
                                      });
                                    },
                                    child: const Text("DONE  ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86),
                                        )))
                              ],
                            ),
                          ),
                          const Divider(color: Colors.grey, height: 2),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: SizedBox(
                              width: width * 0.9,
                              child: const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Location Any",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Icon(Icons.navigate_next_outlined)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Pro Category",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Icon(Icons.navigate_next_outlined)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Highlights",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Icon(Icons.navigate_next_outlined)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rating",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Icon(Icons.navigate_next_outlined)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Sort",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Icon(Icons.navigate_next_outlined)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )))
              : Container(),
          LocationTap == 1
              ? Positioned(
                  bottom: kBottomNavigationBarHeight - kToolbarHeight,
                  child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 30,
                          blurRadius: 30,
                          offset:
                              const Offset(0, -5), // changes position of shadow
                        ),
                      ]),
                      width: width,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.filter_list_outlined),
                                    SizedBox(width: 10),
                                    Text("Location",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        LocationTap = 0;
                                      });
                                    },
                                    child: const Text("DONE  ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86),
                                        )))
                              ],
                            ),
                          ),
                          const Divider(color: Colors.grey, height: 2),
                        ],
                      )))
              : Container(),
          ProCategory == 1
              ? Positioned(
                  bottom: kBottomNavigationBarHeight - kToolbarHeight,
                  child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 30,
                          blurRadius: 30,
                          offset:
                              const Offset(0, -5), // changes position of shadow
                        ),
                      ]),
                      width: width,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.filter_list_outlined),
                                    SizedBox(width: 10),
                                    Text("Pro Category",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        ProCategory = 0;
                                      });
                                    },
                                    child: const Text("DONE  ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 246, 6, 86),
                                        )))
                              ],
                            ),
                          ),
                          const Divider(color: Colors.grey, height: 2),
                        ],
                      )))
              : Container(),
        ]),
      ),
    );
  }
}
