import 'package:amardesigner/middleware/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectInfo extends StatefulWidget {
  const ProjectInfo({super.key});

  @override
  State<ProjectInfo> createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
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
              const Text("Project Information",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color:Color.fromARGB(255, 246, 6, 86))),
              const Divider(thickness: 2),
              const SizedBox(height: 50),
              const Text("New Project Name",
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
                   const SizedBox(height: 10),
              const Text("Project Address",
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
              const SizedBox(height: 10),
              const Text("Project Year",
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
                  const SizedBox(height: 10),
              const Text("Project Cost",
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
                  const SizedBox(height: 10),
              const Text("Select Content",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  width: width * 0.9,
                  child: DropdownButton(
                    isDense: true,
                    hint: _dropDownValue == null
                        ? Text('Dropdown')
                        : Text(
                            _dropDownValue,
                            style: TextStyle(color: Colors.black54),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: Colors.black54),
                    items: ['One', 'Two', 'Three'].map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(
                        () {
                          _dropDownValue = val.toString();
                        },
                      );
                    },
                  )),
              const SizedBox(height: 10),
              const Text("Category",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  width: width * 0.9,
                  child: DropdownButton(
                    isDense: true,
                    hint: _dropDownValue == null
                        ? Text('Dropdown')
                        : Text(
                            _dropDownValue,
                            style: TextStyle(color: Colors.black54),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: Colors.black54),
                    items: ['One', 'Two', 'Three'].map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(
                        () {
                          _dropDownValue = val.toString();
                        },
                      );
                    },
                  )),
                  
              const SizedBox(height: 10),
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
              Container(height: 20),
              Align(alignment: Alignment.center,
                child: Container(
                  width: width*0.55,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.getDashBoardRoute());
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
                        color: const Color.fromARGB(201, 203, 4, 4),
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
