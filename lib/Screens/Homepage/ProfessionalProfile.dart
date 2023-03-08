import 'package:amardesigner/Data/SearchData.dart';
import 'package:amardesigner/Screens/Homepage/ProjectDetails.dart';
import 'package:amardesigner/Screens/Homepage/viewAll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfessionalProfile extends StatefulWidget {
  const ProfessionalProfile({super.key});

  @override
  State<ProfessionalProfile> createState() => _ProfessionalProfileState();
}

class _ProfessionalProfileState extends State<ProfessionalProfile> {
  int messageClick = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: 200,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image.asset(
                              "assets/image/imgtop.PNG",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  messageClick == 0
                                      ? messageClick = 1
                                      : messageClick = 0;
                                });
                              },
                              child: const Card(
                                  color: Color.fromARGB(255, 246, 6, 86),
                                  elevation: 3,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "Message",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  )),
                            ),
                            // const Card(
                            //     color: Colors.white,
                            //     elevation: 3,
                            //     child: Padding(
                            //       padding: EdgeInsets.all(5.0),
                            //       child: Text(
                            //         "follow",
                            //         style: TextStyle(
                            //             color: Colors.black, fontSize: 12),
                            //       ),
                            //     )),
                          ],
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
                        backgroundImage: AssetImage("assets/image/LoGo.jpg")),
                  ),
                ]),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text("Sam Chishti Saifi",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 8),
                  child: Text(
                    textAlign: TextAlign.start,
                    "100% Aluminium Modular Kicthen, Aluminium profile kitchen, wooden Modular Kitchen, Aluminium Almirah, wooden Almirah, Wooden Bed, Sofa, Steel ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 10),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 16),
                      Row(
                        children: [
                          Icon(
                            Icons.work_outline_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Carpenter  ",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(width: 2),
                          Text("Delhi  ",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10)),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.home_outlined,
                      //       color: Colors.grey,
                      //       size: 15,
                      //     ),
                      //     SizedBox(width: 2),
                      //     Text("Self Employed  ",
                      //         style:
                      //             TextStyle(color: Colors.grey, fontSize: 10)),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.more_time_outlined,
                      //       color: Colors.grey,
                      //       size: 15,
                      //     ),
                      //     SizedBox(width: 2),
                      //     Text("15 year",
                      //         style:
                      //             TextStyle(color: Colors.grey, fontSize: 10)),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // const Row(
                //   children: [
                //     SizedBox(width: 16),
                //     Text(
                //       "220 Followers",
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w600,
                //           fontSize: 10),
                //     ),
                //     SizedBox(width: 5),
                //     Text(
                //       "22 Following",
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w600,
                //           fontSize: 10),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Image.asset("assets/image/Logo/facebook.png", height: 25),
                    const SizedBox(width: 16),
                    Image.asset("assets/image/Logo/download.jpg", height: 25),
                    const SizedBox(width: 16),
                    const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color.fromARGB(255, 246, 6, 86),
                      child: Icon(
                        Icons.mail,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color.fromARGB(255, 246, 6, 86),
                      child: Icon(
                        Icons.more_vert_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                // const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text(
                        "16 Projects",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const ViewAllPage());
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Color.fromARGB(255, 246, 6, 86),
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 8),
                SizedBox(
                  height: 260,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: SearchData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: TextButton(
                            onPressed: () {
                              Get.to(ProjectDetails());
                            },
                            child: Card(
                              child: Container(
                                width: width * 0.4,
                                color: Colors.grey[100],
                                child: Stack(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width * 0.4,
                                        height: 150,
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
                                              Text(SearchData[index]["title"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16)),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                    width: width * 0.4,
                                                    child: const Text(
                                                        "16 Photos",
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.grey))),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 130,
                                    left: 0,
                                    child: Container(
                                        width: width * 0.4,
                                        color: Colors.grey.withOpacity(0.9),
                                        child: const Text(
                                            overflow: TextOverflow.ellipsis,
                                            " Noida, Uttar Pradesh",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white))),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text("26 reviews"),
                        ),
                        Row(children: [
                          const SizedBox(width: 16),
                          Icon(Icons.star, color: Colors.yellow[600], size: 14),
                          Icon(Icons.star, color: Colors.yellow[600], size: 14),
                          Icon(Icons.star, color: Colors.yellow[600], size: 14),
                          Icon(Icons.star, color: Colors.yellow[600], size: 14),
                          Icon(Icons.star, color: Colors.yellow[600], size: 14)
                        ])
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Card(
                          color: Color.fromARGB(255, 246, 6, 86),
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "REVIEW ME",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                    width: width,
                    height: 1000,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        physics: const ScrollPhysics(
                            parent: NeverScrollableScrollPhysics()),
                        itemBuilder: (BuildContext ctxt, int index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.grey[200],
                                  width: width,
                                  height: 170,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  child: Image.asset(
                                                    'assets/image/profile.jpg',
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "HU- 544765474",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 13),
                                                    ),
                                                    Container(
                                                      child: const Text(
                                                        "Client  ",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(children: [
                                                  Icon(Icons.star,
                                                      color: Colors.yellow[600],
                                                      size: 13),
                                                  Icon(Icons.star,
                                                      color: Colors.yellow[600],
                                                      size: 13),
                                                  Icon(Icons.star,
                                                      color: Colors.yellow[600],
                                                      size: 13),
                                                  Icon(Icons.star,
                                                      color: Colors.yellow[600],
                                                      size: 13),
                                                  Icon(Icons.star,
                                                      color: Colors.yellow[600],
                                                      size: 13)
                                                ]),
                                                const Text("Oct 2 2022",
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.0, right: 16),
                                        child: Text(
                                            "I got my House designed by Gagandeep. The designs created are as per our taste and shared requirements. They have really good hand in",
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.0, right: 16),
                                        child: Text("Read More",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 246, 6, 86))),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16.0),
                                        child: Row(children: [
                                          Icon(Icons.thumb_up_alt_outlined,
                                              size: 15),
                                          SizedBox(width: 5),
                                          Text("Like")
                                        ]),
                                      )
                                    ],
                                  )),
                            )))
              ],
            ),
            messageClick == 1
                ? Positioned(
                    // top: height * 0.2,
                    // left: 17,
                    child: PopUpMessage(),
                  )
                : Container(),
          ]),
        ),
      ),
    );
    ;
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
