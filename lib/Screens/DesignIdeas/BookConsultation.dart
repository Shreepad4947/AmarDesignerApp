import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookConsultation extends StatefulWidget {
  const BookConsultation({super.key});

  @override
  State<BookConsultation> createState() => _BookConsultationState();
}

class _BookConsultationState extends State<BookConsultation> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Book Consultation",
              style: TextStyle(fontWeight: FontWeight.w600)),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  "Talk to Designer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
                const SizedBox(height:20),
                 Container(
                    height: 50,
                    decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.grey,),borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(left:12.0),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,hintText: "Name",hintStyle: TextStyle(color: Colors.grey,fontSize: 15)),
                        style: TextStyle(
                            decorationThickness: 0,
                            color: Colors.black54,
                            textBaseline: TextBaseline.alphabetic),
                      ),
                    )),
                    const SizedBox(height:20),
                //  Container(
                //     height: 50,
                //     decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.grey,),borderRadius: BorderRadius.circular(10)),
                //     child: const Padding(
                //       padding: EdgeInsets.only(left:12.0),
                //       child: TextField(
                //         decoration: InputDecoration(border: InputBorder.none,hintText: "Email ID",hintStyle: TextStyle(color: Colors.grey,fontSize: 15)),
                //         style: TextStyle(
                //             decorationThickness: 0,
                //             color: Colors.black54,
                //             textBaseline: TextBaseline.alphabetic),
                //       ),
                //     )),
                //     const SizedBox(height:20),
                 Container(
                    height: 50,
                    decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.grey,),borderRadius: BorderRadius.circular(10)),
                    child:  Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox( height:30,width: 30,child: Image.asset("assets/image/Logo/india.jpg",)),
                          SizedBox(
                            width:width*0.8,
                            height:50,
                            child: const Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,hintText: "Phone No",hintStyle: TextStyle(color: Colors.grey,fontSize: 15)),
                                style: TextStyle(
                                    decorationThickness: 0,
                                    color: Colors.black54,
                                    textBaseline: TextBaseline.alphabetic),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                    const SizedBox(height:10),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Checkbox(
                        activeColor: const Color.fromARGB( 255, 246, 6, 86),
                        value: true, onChanged: (bool){}),
                        const Text("Send me updates on WhatsApp")
                    ],),
                    const SizedBox(height:20),
                 Container(
                    height: 50,
                    decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.grey,),borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(left:12.0),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,hintText: "Pin Code",hintStyle: TextStyle(color: Colors.grey,fontSize: 15)),
                        style: TextStyle(
                            decorationThickness: 0,
                            color: Colors.black54,
                            textBaseline: TextBaseline.alphabetic),
                      ),
                    )),
                    const SizedBox(height:30),
                    Container(width: width*0.9,height:50,
                    alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color.fromARGB(255, 246, 6, 86),
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromARGB(
                                            255, 246, 6, 86))),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("BOOK FREE CONSULTATION",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                )),
                                const SizedBox(height:30),
                         Container(alignment: Alignment.center,
                           child: const Text("By submitting this form, you agree to the",
                                         style: TextStyle(
                                             color: Colors.grey,
                                             fontWeight: FontWeight.w500,
                                             fontSize: 12)),
                         )    ,
                         const SizedBox(height:5),
                         Container(alignment: Alignment.center,
                           child: const Text("Privacy Policy And Terms And Condition",
                                         style: TextStyle(
                                             color: Color.fromARGB( 255, 246, 6, 86),
                                             fontWeight: FontWeight.w500,
                                             fontSize: 12)),)    
              ]),
            ),
          ),
        ));
  }
}
