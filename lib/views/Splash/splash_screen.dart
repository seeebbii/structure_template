import 'dart:async';

import 'package:flutter/material.dart';
import 'package:revision/constants/colors.dart';
import 'package:revision/constants/controllers.dart';
import 'package:revision/router/router_generator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () => navigationController.getOffAll(authDecider));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: darkBlue,
      body: Center(
        child: FlutterLogo( size: 100,),
      ),
    );
  }
}
