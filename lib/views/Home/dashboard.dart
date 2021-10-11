import 'package:flutter/material.dart';
import 'package:revision/constants/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Flutter', style: Theme.of(context).primaryTextTheme.headline5,),
            backgroundColor: lightBlue,
            centerTitle: true,
            floating: true,
            pinned: true,
            expandedHeight: size.height * 0.3,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            flexibleSpace: Text('HEY'),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('HEY'),
            )
          )
        ],
      ),
    );
  }
}
