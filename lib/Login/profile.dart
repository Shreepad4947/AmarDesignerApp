import 'package:amardesigner/widgets/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:materialx_flutter/data/img.dart';
// import 'package:materialx_flutter/data/my_colors.dart';
// import 'package:materialx_flutter/widget/my_text.dart';
// import 'package:materialx_flutter/widget/toolbar.dart';

class ProfileBlueAppbarRoute extends StatefulWidget {

  ProfileBlueAppbarRoute();

  @override
  ProfileBlueAppbarRouteState createState() => new ProfileBlueAppbarRouteState();
}


class ProfileBlueAppbarRouteState extends State<ProfileBlueAppbarRoute> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      // appBar: MyAppBar(title:"Settings"),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Image.asset("assets/image/imgtop.PNG")
          ],
        ),
      ),
    );
  }
}