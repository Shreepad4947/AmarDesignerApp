import 'package:amardesigner/middleware/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  String selectedOption = "";
  String _dropDownValue = "";
  final List<String> _locations = [
    ' Category A',
    'Category B',
    'Category C',
    'Category D'
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Business Information",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromARGB(255, 246, 6, 86))),
              const Divider(thickness: 2,),
              const SizedBox(height: 30),
              const Text("Website",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Business Description",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Container(
                  height: 80,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Write your business description in 25 words',
                      hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
                    style: TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Logo",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.attach_file_outlined,color: Color.fromARGB(255, 246, 6, 86),size: 20),
                      hintText: 'Choose a file to upload',
                      hintStyle: const TextStyle(fontSize: 12,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Upload a Image",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.attach_file_outlined,color: Color.fromARGB(255, 246, 6, 86),size: 20),
                      hintText: 'Choose a file to upload',
                      hintStyle: const TextStyle(fontSize: 12,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text("Social Media",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                       hintText: 'Facebool',
                        hintStyle: const TextStyle(fontSize: 12,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
                   const SizedBox(height: 10),
                  Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                       hintText: 'Instagram',
                        hintStyle: const TextStyle(fontSize: 12,color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                        decorationThickness: 0,
                        color: Colors.black54,
                        textBaseline: TextBaseline.alphabetic),
                  )),
              const SizedBox(height: 10),
              Container(height: 100),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 0.55,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.getAddYourProjectdRoute());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 246, 6, 86),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
