import 'package:flutter/material.dart';
import 'package:revision/constants/controllers.dart';
import 'package:revision/views/Authentication/landing.dart';
import 'package:revision/views/Authentication/login.dart';
import 'package:revision/views/Home/dashboard.dart';

class AuthDecider extends StatelessWidget {
  const AuthDecider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: authController.getUserId(),
        builder: (ctx, AsyncSnapshot auth){
          if(auth.hasData && auth.data != null){
            return const Dashboard();
          }else{
            return const Landing();
          }
        });
  }
}
