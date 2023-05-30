import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key,}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, "/home");
        },
        child: Image.asset(
          'images/logo_vidaleve.png',
          width: 70.0,
          height: 70.0,
        ),
      ),
    );
  }
}