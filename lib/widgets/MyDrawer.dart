import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
      return  SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,//20.0, 
        child: Drawer(
            child:  ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration:  BoxDecoration(color: Colors.orange),
              child: Text("DRAWER HEADER.."),
            ),
             ListTile(
              title: const Text("Item 1"),
              onTap: () { },
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () { },
            ),
             ListTile(
              title: const Text("Item 1"),
              onTap: () { },
            ),
             ListTile(
              title: const Text("Item 1"),
              onTap: () { },
            ),
          ],
        )),
      );
    }
}