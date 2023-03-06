
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:popup_card/popup_card.dart';

class Imageviewer extends StatefulWidget {
  @override
  State<Imageviewer> createState() => _ImageviewerState();
}

class _ImageviewerState extends State<Imageviewer> {
  // const Imageviewer({super.key});
int activeIndex = 0;

  final controller = CarouselController();

  bool isLoading = false;

  final List<String> imageList = [
    "assets/image/Mask.png",
    "assets/image/img3.PNG",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.95,
            child: buildImageSlider()),
            
        ],
      ));
  }

  Widget buildImageSlider() => CarouselSlider.builder(
      carouselController: controller,
      itemCount: imageList.length,
      itemBuilder: ((context, index, realIndex) {
        final Image = imageList[index];
        return buildImage(Image, index);
      }),
      options: CarouselOptions(
        height:MediaQuery.of(context).size.height,
        initialPage: 0,
        onPageChanged: ((index, reason) => setState(() => activeIndex = index)),
        enlargeCenterPage: true,
        viewportFraction: 1,
      ));

  Widget buildImage(String image, int index) => Stack(
    children: [
      Container(
          // color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: Opacity(
            opacity: 0.2,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top:MediaQuery.of(context).size.height*0.25,
          child: Container(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.5,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        ]
  );
}