import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade400,
          width: 2  
        )
      ),
      child: Row(
        children: [
          Gap(16),
          const Expanded(
            child: TextField(
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                filled: false,
                hintText: "search places",
                hintTextDirection: TextDirection.ltr,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
          SizedBox(
            height: 24,
            child: VerticalDivider(
              color: theme.colorScheme.outline,
              thickness: 1,
              width: 10,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune, color: theme.colorScheme.outline),
          ),
        ],
      ),
    );
  }
}
