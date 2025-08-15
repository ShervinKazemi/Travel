import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hi, Shervin👋"),
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/img_profile.jpg"),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(82);
}