import 'package:amardesigner/Data/SearchData.dart';
import 'package:amardesigner/Screens/Homepage/ProjectDetails.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:amardesigner/widgets/AppBar.dart';
import 'package:amardesigner/widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:amardesigner/Data/SampleData.dart';
import 'package:get/get.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({super.key});

  @override
  State<ViewAllPage> createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  int messageClick = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Projects",
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
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
      body: SafeArea(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Star wood works",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        Container(
                          child: const Text(
                            "Interior Designer And Decorator",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                        Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          const Text(
                            " 26 Review and Rating",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          )
                        ])
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: height * 0.7,
                width: width,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: SearchData.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          Get.to(ProjectDetails());
                        },
                        child: Card(
                          child: Container(
                            width: width * 0.5,
                            height: 350,
                            color: Colors.grey[100],
                            child: Stack(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: width * 0.5,
                                    height: 110,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(3),
                                        child: Image.asset(
                                          SearchData[index]["image"],
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(SearchData[index]["title"],
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Container(
                                                width: width * 0.4,
                                                child: const Text("16 Photos",
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.grey))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 100,
                                left: 0,
                                child: Container(
                                    width: width * 0.5,
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
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                ),
              ),
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
