import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

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
                      Text("Terms & ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
                      Text("Conditions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(255, 246, 6, 86)),)
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
                             child: Text("User agreement"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sed non dui aliquam, ullamcorper est non, aliquet mauris. Quisque lacus ligula, dapibus nec dignissim non, tincidunt vel quam. Etiam porttitor iaculis odio."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("1. Welcome to website! By accessing and using our website, you agree to be bound by these terms a"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("2. Welcome to website! By accessing and using our website, you agree to be bound by these terms and conditions. Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("3. Welcome to website! By accessing and using our website, you agree to be bound by these terms and co Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("4. Welcome to website! By accessing and using our website, you agree to be bound by these terms and conditions. If yo Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("5. Welcome to website! By accessing and using our website, you agree to be bound by these terms and coe. Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("6. Welcome to website! By accessing and using our website, you agree to be bound by these terms and co Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:8.0,left:8),
                             child: Text("7. Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit Welcome to website! By accessing and using our website, you agree to be bound by these terms and condit"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top:10.0,),
                             child: Text("By using this website, you represent that you have read and understand these terms and conditions, and that you agree to be bound by them. If you have any questions or concerns about these terms, please contact us."
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           ),
                                ]),
                    ),)
                    ,SizedBox(height:height*0.05),
                  Container(width: width*0.9, color:Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("Previous terms & condition version"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                           ) ,
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("1. January 01, 2019"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text("2. January 01, 2018"
                             ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),),
                           )
                                ]),
                    ),)
                    ,SizedBox(height:height*0.05),
                
                    SizedBox(height:height*0.05),
              ],),
                ),
            ),
          ),
        ),
      ));
  }
}