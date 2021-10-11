import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revision/controllers/navigation/navigation_controller.dart';
import 'package:revision/router/router_generator.dart';
import 'package:revision/theme/app_theme.dart';

import 'controllers/Authentication/auth_controller.dart';

void main(){
  Get.put(NavigationController());
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.onGeneratedRoutes,
      initialRoute: initialRoute,
      theme: appTheme
    );
  }
}
