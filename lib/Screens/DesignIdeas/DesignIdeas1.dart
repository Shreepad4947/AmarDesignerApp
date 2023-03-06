import 'package:amardesigner/middleware/route.dart';
import 'package:amardesigner/widgets/AppBar.dart';
import 'package:amardesigner/widgets/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:amardesigner/Data/SampleData.dart';
import 'package:get/get.dart';

class DesignIdeas1 extends StatefulWidget {
  const DesignIdeas1({super.key});

  @override
  State<DesignIdeas1> createState() => _DesignIdeas1State();
}

class _DesignIdeas1State extends State<DesignIdeas1> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> productList = [
      {
        "title": "Kitchen",
        "Designs": "576 Designs",
        "image": "assets/image/img.PNG",
      },
      {
        "title": "Living Room",
        "Designs": "576 Designs",
        "image": "assets/image/img7.PNG",
      },
      {
        "title": "Master Bedroom",
        "Designs": "576 Designs",
        "image": "assets/image/img7.PNG",
      },
      {
        "title": "Tv Unit Design",
        "Designs": "576 Designs",
        "image": "assets/image/img2.PNG",
      },
      {
        "title": "False Celling Design",
        "Designs": "576 Designs",
        "image": "assets/image/img6.PNG",
      },
      {
        "title": "Wardobe",
        "Designs": "576 Designs",
        "image": "assets/image/img5.PNG",
      },
      {
        "title": "Kids Bedroom",
        "Designs": "576 Designs",
        "image": "assets/image/img2.PNG",
      },
      {
        "title": "Pooja Room",
        "Designs": "576 Designs",
        "image": "assets/image/img.PNG",
      },
      {
        "title": "Dinning Room",
        "Designs": "576 Designs",
        "image": "assets/image/img.PNG",
      },
      {
        "title": "Wallpaper Design",
        "Designs": "576 Designs",
        "image": "assets/image/img2.PNG",
      },
      {
        "title": "Guest Bedroom",
        "Designs": "576 Designs",
        "image": "assets/image/img2.PNG",
      },
      {
        "title": "Home Office",
        "Designs": "576 Designs",
        "image": "assets/image/img.PNG",
      },
    ];

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      appBar: MyAppBar(title1: "Design ",title2: "Ideas"),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 8, bottom: 8),
                child: Text("Categories",
                    style: TextStyle(
                        color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                child: Expanded(
                  child: GridView.builder(
                    primary: false,
                    shrinkWrap: false,
                    itemCount: productList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return TextButton(
                        onPressed: () {
                          Get.toNamed(
                            Routes.getDesignIdeas2dRoute(), );
                        },
                        child: SizedBox(
                          width:width*0.5,
                          height:200,
                          child: Card(
                           
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:120,
                                  width:width*0.5,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(6)),
                                    child: Image.asset(
                                      productList[index]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0,top:2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          productList[index]['title'],
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              decoration: TextDecoration.none),
                                        ),
                                      ),
                                      Text(
                                        productList[index]['Designs'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: Colors.grey,
                                            decoration: TextDecoration.none),
                                      ),
                                      // SizedBox(height:3)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        
      ),
    );
  }
}
