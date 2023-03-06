import 'package:amardesigner/Data/InteriorDesigns.dart';
import 'package:amardesigner/Data/SearchData.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DesignIdeas3 extends StatefulWidget {
  const DesignIdeas3({super.key});

  @override
  State<DesignIdeas3> createState() => _DesignIdeas3State();
}

class _DesignIdeas3State extends State<DesignIdeas3>
    with TickerProviderStateMixin {
  ScrollController _controller = ScrollController();
  double width0 = 0; // single item length
  static const listLength = 5;
  int move = 0;

  int activeIndex = 0;
  final List<String> imageList = [
    "assets/image/Rectangle126.png",
    "assets/image/Rectangle126.png",
    "assets/image/Rectangle126.png",
    "assets/image/Rectangle126.png",
    "assets/image/Rectangle126.png",
  ];
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    int activeIndex = 0;

    void increaseWidth() {
      setState(() {
        width0 += width;
      });
    }

    scrollToRight() {
      {
        setState(() {
          if (move < listLength - 1) {
            width0 = width + width0;
            move++;
          }
        });
        _controller.animateTo(width0,
            duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
      }
    }

    scrollToLeft() {
      {
        setState(() {
          if (width0 >= width) {
            move--;
            width0 = width0 - width;
          }
        });
        _controller.animateTo(width0,
            duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
      }
    }

    final List<String> imageList = [
      "assets/image/Mask.png",
      "assets/image/Mask.png",
      "assets/image/Mask.png",
      "assets/image/Mask.png",
      "assets/image/Mask.png",
    ];

    return Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Container(
              //     width: width * 0.5,
              //     decoration: const BoxDecoration(
              //         borderRadius:
              //             BorderRadius.only(topLeft: Radius.circular(5)),
              //         color: Colors.black),
              //     child: const Padding(
              //       padding: EdgeInsets.all(10.0),
              //       child: Text(
              //         "Book Now",
              //         style: TextStyle(
              //             color: Colors.white, fontWeight: FontWeight.bold),
              //         textAlign: TextAlign.center,
              //       ),
              //     )),
              Container(
                  width: width * 0.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 246, 6, 86)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Get Free Quote",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () => scrollToLeft(),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.chevron_left_outlined,
                      color: Color.fromARGB(255, 246, 6, 86), size: 40),
                ),
              ),
              TextButton(
                onPressed: () => scrollToRight(),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.chevron_right_outlined,
                      color: Color.fromARGB(255, 246, 6, 86), size: 40),
                ),
              ),
            ]),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                    height: height * 0.85,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(
                            parent: NeverScrollableScrollPhysics()),
                        itemCount: InteriorDesigns.length,
                        controller: _controller,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return SingleChildScrollView(
                            child: SizedBox(
                              width: width,
                              child: Column(
                                children: [
                                  Container(
                                    width: width,
                                    child: Stack(children: [
                                      buildImageSlider(),
                                      Positioned(
                                          left: 0,
                                          height: height * 0.5,
                                          child: buildButtonLeft()),
                                      Positioned(
                                          right: 0,
                                          height: height * 0.5,
                                          child: buildButtonRight()),
                                      Positioned(
                                          bottom: 10,
                                          left: width * 0.3,
                                          child: buildIndicator()),
                                    ]),
                                  ),
                                  Container(
                                    height: height * 0.4,
                                    child: SingleChildScrollView(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0, right: 10),
                                              child: Text(
                                                InteriorDesigns[index]['Info'],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 17),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Text(
                                                  InteriorDesigns[index]
                                                      ['brief'],
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
              ],
            ),
          ),
        ));
  }

  Widget buildButtonLeft({bool stretch = false}) => TextButton(
      onPressed: () {
        left();
      },
      child: const CircleAvatar(
        child: Icon(Icons.chevron_left),
      ));

  Widget buildButtonRight({bool stretch = false}) => TextButton(
      onPressed: () {
        right();
      },
      child: const CircleAvatar(
        child: Icon(Icons.chevron_right),
      ));

  void left() => controller.nextPage();
  void right() => controller.previousPage();

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
            dotHeight: 3,
            spacing: 20,
            activeDotColor: Color.fromARGB(255, 246, 6, 86),
            dotColor: Colors.white),
      );
}
