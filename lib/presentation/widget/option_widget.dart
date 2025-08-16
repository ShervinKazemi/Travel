import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OptionWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const OptionWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(
            icon,
            size: 20,
            color: Colors.black87,
          ),
        ),
        Gap(4),
        Text(
          text,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: Colors.grey.shade700
          )
        )
      ],
    );
  }
}