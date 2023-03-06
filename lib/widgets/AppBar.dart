import 'package:amardesigner/Login/profile_page.dart';
import 'package:amardesigner/middleware/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.title1, required this.title2})
      : super(key: key);

  final String title1;
  final String title2;

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          Text((widget.title1),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 246, 6, 86),
                  fontWeight: FontWeight.w600)),
          Text((widget.title2),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ],
      ),
      titleSpacing: 0.0,
      actions: <Widget>[
        Row(
          children: <Widget>[
            const Icon(Icons.call,color:Color.fromARGB(255, 246, 6, 86)),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.getProfileRoute());
              },
              child:  Padding(
                  padding: const EdgeInsets.only(right: 5.0, top: 5, bottom: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/image/profile.jpg',
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
            ),
          ],
        ),
      ],
    );
  }
}
