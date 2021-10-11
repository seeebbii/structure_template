import 'package:flutter/material.dart';
import 'package:revision/constants/controllers.dart';
import 'package:revision/router/router_generator.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (ctx, constraint){
        return Scaffold(
            body: SingleChildScrollView(
              child: ConstrainedBox(
                constraints:  BoxConstraints(minHeight: constraint.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.1),
                          Text('Learn Free', style: Theme.of(context).textTheme.headline5,),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('We make learning easy. Join Tvac Studio to learn flutter for free on YouTube.', textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/landing.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => navigationController.getOffAll(login),
                          child: const Text('Get Started'),
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}

