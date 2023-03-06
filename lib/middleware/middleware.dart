import 'package:amardesigner/Middleware/route.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Middleware extends GetMiddleware {
  @override
  int? get priority => 1;

  bool isAuthenticated = true;

  @override
  RouteSettings? redirect(String? route) {
    if (isAuthenticated == true) {
     return RouteSettings(name: Routes.getHomeRoute());  
         
    }else if(isAuthenticated == false){
        return RouteSettings(name: Routes.getSignInRoute());}
    return null;
  }
}
