import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:travel/model/provider/home_provider.dart';
import 'package:travel/presentation/widget/home_app_bar.dart';
import 'package:travel/presentation/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(),
            Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Popular places",
                  style: textTheme.headlineMedium,
                ),
                Text(
                  "View all",
                  style: textTheme.headlineSmall!.copyWith(color: Colors.grey.shade700),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}