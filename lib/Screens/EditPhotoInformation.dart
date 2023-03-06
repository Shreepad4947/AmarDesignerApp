import 'package:amardesigner/Data/recentProjectData.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPhoto extends StatefulWidget {
  const EditPhoto({super.key});

  @override
  State<EditPhoto> createState() => _EditPhotoState();
}

class _EditPhotoState extends State<EditPhoto> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
           decoration: BoxDecoration( image:DecorationImage(image: AssetImage("assets/image/bgi3.jpg",),fit: BoxFit.fill,opacity:0.4 )),
          // color: Colors.grey[200],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, bottom: 10, top: 30),
                  child: Container(
                      child: const Text(
                    "Edit Phot Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 30),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Container(
                    child: const Text(
                      "Click the 'Done' button on top when finished",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontSize: 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: List.generate(
                          recentProject.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Container(
                                        // height: height*0.27,
                                        width: width * 0.8,
                                        margin: const EdgeInsets.all(2),
                                        // padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                           image:DecorationImage(image: AssetImage("assets/image/bgi3.jpg",),fit: BoxFit.cover,opacity:0.5 ),
                                           
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(12),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(1),
                                              blurRadius: 10,
                                              spreadRadius: 1,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  8),
                                                          topRight:
                                                              Radius.circular(
                                                                  8)),
                                                  child: Image.asset(
                                                      recentProject[index]
                                                          ['image'],
                                                      width: width * 0.8,
                                                      fit: BoxFit.fill),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.circle,
                                                      color: Color.fromARGB(
                                                          255, 194, 191, 191)),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    recentProject[index]
                                                        ['Designs'],
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                      )
                                    ]),
                              )),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.getEditPhoto2PagedRoute());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 246, 6, 86)),
                          width: width * 0.35,
                          height: 40,
                          child: const Text(
                            "Upload",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 246, 6, 86)),
                          width: width * 0.35,
                          height: 40,
                          child: const Text(
                            "Remove Photos",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
