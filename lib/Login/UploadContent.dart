import 'package:amardesigner/Middleware/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UploadContent extends StatefulWidget {
  const UploadContent({Key? key}) : super(key: key);

  @override
  State<UploadContent> createState() => _UploadContentState();
}

class _UploadContentState extends State<UploadContent> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> _userData = {};

  late String _newUsername,
      _phoneNumber,
      _companyName,
      _category,
      _currentPassword = '',
      _newPassword = '';

  final List<String> _address = List.generate(5, (index) => '');

  late bool _somethingChanged;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
           decoration: BoxDecoration( image:DecorationImage(image: AssetImage("assets/image/bgi3.jpg",),fit: BoxFit.fill,opacity:0.4 )),
          child: Align(
            alignment: Alignment.center,
            child: Container(
             
              width: width * 0.9,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10, top: 30),
                    child: Container(
                        child: const Text(
                      "Upload Content to a Project",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 25),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: Container(
                      child: const Text(
                        "A Project is a collection of photos and videos of your own work or products. Projects are usually best organized by client, job site, or product line.",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    // height:height*0.7,
                    width: width * 0.9,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: width * 0.9,
                                  // height: height * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // color: Colors.white,
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(
                                          child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: Form(
                                            key: _formKey,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                      "New project Name",
                                                       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86))),
                                                  const SizedBox(height: 14),
                                                  SizedBox(
                                                    height: 35,
                                                    child: TextFormField(
                                                      onChanged: (value) =>
                                                          _companyName =
                                                              value,
                                                      decoration: const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText:
                                                              'Type project name',
                                                          labelStyle:
                                                              TextStyle(
                                                                  fontSize:
                                                                      10)),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 14),
                                                  const Text(
                                                      "Project address",
                                                       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86))),
                                                  const SizedBox(height: 14),
                                                  SizedBox(
                                                    height: 35,
                                                    child: TextFormField(
                                                      onChanged: (value) =>
                                                          _category = value,
                                                      decoration: const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText:
                                                              'Enter a project address',
                                                          labelStyle:
                                                              TextStyle(
                                                                  fontSize:
                                                                      10)),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 14),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          8.0),
                                                              child: Text(
                                                                  "Project Year",
                                                                   style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86))),
                                                            ),
                                                            SizedBox(
                                                              height: 35,
                                                              width: width *
                                                                  0.35,
                                                              child:
                                                                  TextFormField(
                                                                decoration: const InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(),
                                                                    labelText:
                                                                        'year',
                                                                    labelStyle:
                                                                        TextStyle(
                                                                            fontSize: 10)),
                                                                onChanged: (value) =>
                                                                    _address[
                                                                            1] =
                                                                        value
                                                                            .trim(),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          8.0),
                                                              child: Text(
                                                                  "Project cost",
                                                                   style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86))),
                                                            ),
                                                            SizedBox(
                                                              height: 35,
                                                              width: width *
                                                                  0.35,
                                                              child:
                                                                  TextFormField(
                                                                decoration: const InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(),
                                                                    labelText:
                                                                        'select a cost range',
                                                                    labelStyle:
                                                                        TextStyle(
                                                                            fontSize: 10)),
                                                                onChanged: (value) =>
                                                                    _address[
                                                                            2] =
                                                                        value
                                                                            .trim(),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ]),
                                                ]),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Container(
                              width: width * 0.9,
                              // height: height * 0.,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, top: 10, bottom: 10),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Category" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86)))),
                                  ),
                                  
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                        "Get noticed on other profiles by crediting other pros on this project",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                        "(i.e. Architect, Interior Designer, Photographer, Plumber, Electrician, etc)",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: width * 0.55,
                                            height: height * 0.04,
                                            child: const TextField(
                                                decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: width * 0.15,
                                            height: height * 0.04,
                                            child: const TextField(
                                                decoration: InputDecoration(
                                              labelText: "Add",
                                              
                                              labelStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                                              border: OutlineInputBorder(),
                                            )),
                                          ),
                                        )
                                      ],
                                    )),
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Container(
                              width: width * 0.9,
                              // height: height * 0.7,
                              decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 20.0,bottom:10,top:10),
                                        child: Text("Select content",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 246, 6, 86))),
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                        // color: Colors.white,
                                      ),
                                      width: width * 0.73,
                                      height: height * 0.15,
                                      child: Padding(
                                        padding: EdgeInsets.all(height * 0.01),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.image_outlined,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                            Text("Upload a image",textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.all(height * 0.02),
                                    child: Container(
                                      width: width * 0.7,
                                      child: const Text(
                                        "By uploading photos, you are approving their display by Houzz, saying that you either own the rights to the image or that you have permission or a license to do so from the copyright holder, and agreeing to abide by Amar designer's terms of use.",
                                         
                                         style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.3,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 246, 6, 86)),
                                      onPressed: () async {
                                        Get.toNamed(
                                            Routes.getEditPhotoPagedRoute());
                                      },
                                      child: const Text('Upload',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                          textAlign: TextAlign.center),
                                    ),
                                  ),
                                  SizedBox(height:30)
                                ],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
