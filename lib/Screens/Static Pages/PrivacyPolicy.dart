import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Align(alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Container(
              width: width*0.9,
              child:Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: const [
                      Text("Privacy & ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
                      Text("Policy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(255, 246, 6, 86)),)
                    ],),
                    Text("Last modified: January 01, 2020",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.black),),
                  ],
                )
                ,SizedBox(height:height*0.05),
                  Container(width: width*0.9, color:Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Introduction"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sed non dui aliquam, ullamcorper est non, aliquet mauris. Quisque lacus ligula, dapibus nec dignissim non, tincidunt vel quam. Etiam porttitor iaculis odio."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Cras sagittis nunc lectus, in condimentum ligula ornare at. Etiam sagittis malesuada nisl. Duis volutpat ligula ante. Sed cursus, tortor a pellentesque pulvinar, lorem ipsum gravida elit, id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           )
                                ]),
                    ),)
                    ,SizedBox(height:height*0.05),
                  Container(width: width*0.9, color:Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Using our services"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sed non dui aliquam, ullamcorper est non, aliquet mauris."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text(" Quisque lacus ligula, dapibus nec dignissim non, tincidunt vel quam. Etiam porttitor iaculis odio. Cras sagittis nunc lectus, in condimentum ligula ornare at. Etiam sagittis malesuada nisl. Duis volutpat ligula ante. Sed cursus, tortor a pellentesque pulvinar, lorem ipsum gravida elit, id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           )
                                ]),
                    ),)
                    ,SizedBox(height:height*0.05),
                  Container(width: width*0.9, color:Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Privacy and copyright protection"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Duis ultrices augue id feugiat commodo. Vivamus eu elit convallis, posuere neque at, ultricies tortor. Donec eleifend tortor vel laoreet convallis."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Cras sagittis nunc lectus, in condimentum ligula ornare at. Etiam sagittis malesuada nisl. Duis volutpat ligula ante. Sed cursus, tortor a pellentesque pulvinar, lorem ipsum gravida elit, id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Cras sagittis nunc lectus, in condimentum ligula orDuis volutpat elit,Duis ultrices augue id feugiat commodo. Vivamus eu elit convallis, posuere neque at, ultricies tortor. Donec eleifend tortor vel laoreet convallis. id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           )
                                ]),
                    ),)
                    ,SizedBox(height:height*0.05),
                  Container(width: width*0.9, color:Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Your content in our service"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sed non dui aliquam, ullamcorper est non, aliquet mauris. Quisque lacus ligula, dapibus nec dignissim non, tincidunt vel quam. Etiam porttitor iaculis odio."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Cras sagittis nunc lectus, in condimentum ligula ornare at. Etiam sagittis malesuada nisl. Duis volutpat ligula ante. Sed cursus, tortor a pellentesque pulvinar, lorem ipsum gravida elit, id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Cras sagittis nunc lectus, in condimentum ligula ornare at. Etiam sagittis malesuada nisl. Duis volutpat ligula ante. Sed cursus, tortor a pellentesque pulvinar, lorem ipsum gravida elit, id posuere elit neque in est. Mauris ex justo, tincidunt at suscipit quis, pretium a mi."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           )
                                ]),
                    ),),
                    SizedBox(height:height*0.05),
              ],),
                ),
            ),
          ),
        ),
      ));
  }
}