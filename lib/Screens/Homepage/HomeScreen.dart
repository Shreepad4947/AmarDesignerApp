import 'package:amardesigner/Middleware/route.dart';
import 'package:amardesigner/Screens/Homepage/ImageViewer.dart';
import 'package:amardesigner/Screens/Homepage/ProfessionalProfile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:popup_card/popup_card.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _username = '';
  int activeIndex = 0;
  bool _hasCallSupport = false;
  int messageClick = 0;
  final controller = CarouselController();
  bool isLoading = false;
  final List<String> imageList = [
    "assets/image/img4.PNG",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
    "assets/image/img4.PNG",
    "assets/image/img3.PNG",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    height: 40,
                    width: 40,
                    child:
                        Image.asset("assets/image/logo.png", fit: BoxFit.fill)),
                const Text(("Amar"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 246, 6, 86),
                        fontWeight: FontWeight.w600)),
                const Text(("Designer"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            titleSpacing: 0.0,
            actions: <Widget>[
              const Icon(Icons.call, color: Color.fromARGB(255, 246, 6, 86)),
              TextButton(
                onPressed: () {
                  //   Navigator.pushReplacement(
                  // context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  Get.toNamed(Routes.getProfileRoute());
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0, top: 5, bottom: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/image/profile.jpg',
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.grey[100],
          body: Stack(children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: width,
                    height: 55,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Icon(Icons.filter_alt_outlined,
                                    color: Colors.grey),
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: Color.fromARGB(255, 246, 6, 86),
                                ),
                                hintText: 'New Delhi 110 095',
                                hintStyle: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "Trending Designs",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
                          child: Card(
                            // decoration: const BoxDecoration(color: Colors.white,
                            //   borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      // style: ButtonStyle(),
                                      onPressed: () {
                                        // Get.toNamed(Routes.getImageViewerRoute);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Imageviewer()));
                                      },
                                      child: Container(
                                          width: width,
                                          child: buildImageSlider()),
                                    ),
                                    Positioned(
                                        bottom: 12,
                                        left: width * 0.25,
                                        child: buildIndicator()),
                                    Positioned(
                                        right: 0,
                                        top: 0,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.white,
                                              child: Image.asset(
                                                "assets/image/Vector.png",
                                                fit: BoxFit.cover,
                                              )),
                                        )),
                                    Positioned(
                                        left: 10,
                                        top: 10,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                      Icons
                                                          .remove_red_eye_outlined,
                                                      color: Color.fromARGB(
                                                          255, 246, 6, 86),
                                                      size: 15),
                                                  Text(" 73.5k",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 246, 6, 86),
                                                          fontSize: 10))
                                                ],
                                              ),
                                            ))),
                                  ]),
                                  Container(
                                    width: width,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [

                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  child: Image.asset(
                                                    'assets/image/profile.jpg',
                                                    width: 50.0,
                                                    height: 50.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(left:8.0),
                                                child: TextButton(
                                                                                          onPressed: () {
                                                Get.to(
                                                    const ProfessionalProfile());
                                                                                          },
                                                                                          child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Star wood works",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15),
                                                  ),
                                                  Container(
                                                    child: const Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Carpenter  ",
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 12),
                                                        ),
                                                        Text("Delhi",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 12))
                                                      ],
                                                    ),
                                                  )
                                                ],
                                                                                          ),
                                                                                        ),
                                              ),
                                            ],
                                          ),
                                          
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                messageClick == 0
                                                    ? messageClick = 1
                                                    : messageClick = 0;
                                              });
                                            },
                                            child: const Card(
                                              color: Color.fromARGB(
                                                  255, 246, 6, 86),
                                              elevation: 2,
                                              child: Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text("Message",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ),
                                  // const Padding(
                                  //   padding:
                                  //       EdgeInsets.only(left: 5.0, bottom: 5),
                                  //   child: Text("Tags"),
                                  // ),
                                  // const Padding(
                                  //   padding: EdgeInsets.only(left: 8.0),
                                  //   child: Text(
                                  //       "#LShapeKitchen   #WoodenKitchen   #KitchenInterior   #Wood   #ModularKitchen   #InteriorDesigns   Readmore...",
                                  //       textAlign: TextAlign.left,
                                  //       style: TextStyle(
                                  //           color: Colors.blue, fontSize: 12)),
                                  // ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       top: 8.0, bottom: 8, left: 8),
                                  //   child: Row(
                                  //     children: [
                                  //       SizedBox(
                                  //         height: 37,
                                  //         child: Card(
                                  //             color: Colors.grey,
                                  //             child: TextButton(
                                  //                 onPressed: () {},
                                  //                 child: const Text(
                                  //                     "View Similar",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10,
                                  //                         color: Colors.white)))),
                                  //       ),
                                  //       SizedBox(
                                  //         height: 37,
                                  //         child: Card(
                                  //             color: Colors.grey,
                                  //             child: TextButton(
                                  //                 onPressed: () {},
                                  //                 child: const Text("Kitchen",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10,
                                  //                         color: Colors.white)))),
                                  //       ),
                                  //       SizedBox(
                                  //         height: 37,
                                  //         child: Card(
                                  //             color: Colors.grey,
                                  //             child: TextButton(
                                  //                 onPressed: () {},
                                  //                 child: const Text("Storage",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10,
                                  //                         color: Colors.white)))),
                                  //       ),
                                  // ],
                                  // ),
                                  // )
                                ]),
                          ),
                        );
                      }),
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
          ])),
    );
  }

  Widget buildImageSlider() => CarouselSlider.builder(
      carouselController: controller,
      itemCount: imageList.length,
      itemBuilder: ((context, index, realIndex) {
        final Image = imageList[index];
        return buildImage(Image, index);
      }),
      options: CarouselOptions(
        height: 400,
        initialPage: 0,
        onPageChanged: ((index, reason) => setState(() => activeIndex = index)),
        enlargeCenterPage: true,
        viewportFraction: 1,
      ));

  Widget buildImage(String image, int index) => Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageList.length,
        effect: const SlideEffect(
            dotHeight: 4,
            spacing: 20,
            activeDotColor: Color.fromARGB(255, 246, 6, 86),
            dotColor: Colors.white),
      );

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
