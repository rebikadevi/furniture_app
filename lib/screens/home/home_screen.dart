import 'package:assign_app/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body:const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title:const Text("Dashboard"),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg")),
      ],
    );
  }
}
