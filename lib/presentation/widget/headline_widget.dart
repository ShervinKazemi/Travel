import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Popular places", style: textTheme.headlineMedium),
        TextButton(
          onPressed: () {},
          child: Text(
            "View all",
            style: textTheme.headlineSmall!.copyWith(
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }
}
