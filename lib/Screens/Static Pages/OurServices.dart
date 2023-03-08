import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(color: Colors.grey[100],
            child:Column(children: [
              Image.asset("assets/image/OurServices/Rectangle825.png"),
               SizedBox(height:height*0.05),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Our Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
              ),
              Container(width:width*0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(textAlign: TextAlign.center,"We build, maintain and upgrade your home"
                  ,style: TextStyle(fontSize: 15,color:Colors.grey),),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse154.png")),
                       const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            // width: width*0.3,
                            child: Text("Structural",textAlign: TextAlign.center, style:TextStyle(fontSize: 15))),
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse155.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Construction",style:TextStyle(fontSize: 15)),
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse156.png",)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Interiors",style:TextStyle(fontSize: 15)),
                        )
                    ],
                  ),
                ),
              ],),
                SizedBox(height:height*0.05),
                 Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse157.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Utility",style:TextStyle(fontSize: 15)),
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse158.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Automation",style:TextStyle(fontSize: 15)),
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(width: width*0.2,
                        child: Image.asset("assets/image/OurServices/Ellipse159.png",)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Authority",style:TextStyle(fontSize: 15)),
                        )
                    ],
                  ),
                ),
              ],),
              SizedBox(height:height*0.05),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("What Differentiates Us?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
              ),
              Container(width:width*0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(textAlign: TextAlign.center,"Delivering unique experiences, one service at a time."
                  ,style: TextStyle(fontSize: 15,color:Colors.grey),),
                ),
              ),
               SizedBox(height:height*0.05),
              Container(width: width*0.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: width*0.35 ,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Unparalleled Quality"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"A guarantee of top notch services and source materials"
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Vastu-compliant"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Ensuring that your home resonates with auspicious energies."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                ],),
              ),
              SizedBox(height:height*0.05),
              Container(width: width*0.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector2.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Customised Home Interior Packages"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Inclusive of all home decor services at best prices.."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector3.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Designs Enabled by VR Technology"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Immerse yourself in the integrated world of home designing."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                ],),
              ),
              SizedBox(height:height*0.05),
              Container(width: width*0.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector4.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Smart Tech-Enabled Sustainable Homes"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Designing efficient and resilient smart homes for tomorrow."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector5.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Easy EMIs"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Multiple payment options for a congenial and carefree billing process."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                ],),
              ),
              SizedBox(height:height*0.05),
              Container(width: width*0.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector6.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Home Automation Services"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Constructing homes with high-tech innovation to create the perfect algorithm."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector7.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"5 Years of Structural Warranty"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Transparent and credible home construction practices."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                ],),
              ),
              SizedBox(height:height*0.05),
              Container(width: width*0.8,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector6.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Wholesale Prices"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Competitive prices that suit your budget."
                    ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                  Container(width: width*0.35,height: height*0.3,color: Colors.grey[200],
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/image/OurServices/Icons/Vector7.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(textAlign: TextAlign.center,"Fluent Approvals"
                                        ,style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    const Text(textAlign: TextAlign.center,"Seamless assistance for approvals from government and external authorities.",
                   overflow: TextOverflow.fade ,style: TextStyle(fontSize: 12,color:Colors.black,),),
                  ]),),
                ],),
              ),
              SizedBox(height:height*0.05),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Affordable Pricing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
              ),
              Container(width:width*0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(textAlign: TextAlign.center,"We balance your design needs and budget with our diverse pricing options."
                  ,style: TextStyle(fontSize: 15,color:Colors.grey),),
                ),
              ),
               SizedBox(height:height*0.05),
                Container(width: width*0.9,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container( color: Colors.grey[200],
                      child: Column(
                        children: [
                      Container(alignment: Alignment.center, decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Color.fromARGB(255, 246, 6, 86) ,),
                        height: 60,width: width*0.28,
                      child: const Text("Standard Package",textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.white),),),
                     
                      const Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,size: 20),
                              Text("Adipiscing",style:TextStyle(fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscing",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipig",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscingd",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Dpiscing",style:TextStyle(fontSize: 11)),
                          ],),  
                          ],
                        ),
                      ),const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                              Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipig",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscingd",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Dpiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),  
                          ],
                        ),
                    ]),),
                     Container( color: Colors.grey[200],
                      child: Column(
                        children: [
                      Container(decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Color.fromARGB(255, 246, 6, 86) ,),
                        height: 60,width: width*0.28,
                      child: const Align(alignment: Alignment.center, child: Text("Standard Package",textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.white),)),),
                     
                      const Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,size: 20),
                              Text("Adipiscing",style:TextStyle(fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscing",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipig",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscingd",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Dpiscing",style:TextStyle(fontSize: 11)),
                          ],),  
                          ],
                        ),
                      ),const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                              Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipig",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscingd",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Dpiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),  
                          ],
                        ),
                    ]),),
                     Container( color: Colors.grey[200],
                      child: Column(
                        children: [
                      Container(decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color:Color.fromARGB(255, 246, 6, 86) ,),
                        height: 60,width: width*0.28,
                      child: const Align(alignment: Alignment.center, child: Text("Standard Package",textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.white),)),),
                     
                      const Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,size: 20),
                              Text("Adipiscing",style:TextStyle(fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscing",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipig",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Adipiscingd",style:TextStyle(fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,size: 20),
                          Text("Dpiscing",style:TextStyle(fontSize: 11)),
                          ],),  
                          ],
                        ),
                      ),const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                              Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                              ],),
                            Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipig",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Adipiscingd",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),
                          Row(
                          children: [Icon(Icons.check,color: Colors.grey,size: 20,),
                          Text("Dpiscing",style:TextStyle(color: Colors.grey,fontSize: 11)),
                          ],),  
                          ],
                        ),
                    ]),),
                  ]),),
                  SizedBox(height:height*0.05),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Got a Concern? We’re Here To Help",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black),),
              ),
              Container(width:width*0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(textAlign: TextAlign.center,"We understand that home construction is a cherished dream. We offer perfect solutions to all your queries, so that you can make the best decision."
                  ,style: TextStyle(fontSize: 15,color:Colors.grey),),
                ),
              ),
              SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("How much does a new home construction costs?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Color.fromARGB(255, 246, 6, 86)),),
                       ) ,
                      Text("The final price for the home construction varies depending on the scope of the project, materials used, and other factors."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),
                SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Do you provide a project deadline before it begins?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),),
                       ) ,
                      Text("Yes, we provide a plan of action with a payment schedule in advance to home construction."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),
                SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Do you guarantee the material quality used during the execution?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),),
                       ) ,
                      Text("Yes, supreme quality ISI Marked Materials are used during the execution."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),
                SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Do you ensure a seamless look after completion?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),),
                       ) ,
                      Text("Yes, we offer quality craftsmanship and tailored designs to match your expectations of home construction."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Why should we trust you as a home construction company?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),),
                       ) ,
                      Text("Interior Company is a one-stop solution to designing, building or remodelling your home. With our relentless attention to detail, exceptional customer service and devotion to quality, you can visualise your dream home via Virtual Reality before completion. We offer outstanding warranty service and a one-of-a-kind lifetime preventative home maintenance program."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),SizedBox(height:height*0.05),
              Container(width: width*0.8, color:Colors.grey[200],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("How can we monitor and track the progress of the project?"
                         ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),),
                       ) ,
                      Text("A project manager and site engineer are assigned to track daily tasks and share real time updates on WhatsApp groups. Moreover, customers can opt for CCTV surveillance on the site. From bills of any material acquisition to labour costs, customers are kept in loop at every step."
                       ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey),)
                            ]),
                ),),
                SizedBox(height:height*0.05),
            ],)
          ),
      ),
    ),
    );
  }
}