import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Shervin👋"),
              Text(
              "Explore the world",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyMedium,
            )
            ],
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/image/img_profile.jpg"),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(82);
}