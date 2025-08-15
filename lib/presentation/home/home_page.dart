import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:travel/model/provider/home_provider.dart';
import 'package:travel/presentation/widget/button_item.dart';
import 'package:travel/presentation/widget/home_app_bar.dart';
import 'package:travel/presentation/widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedButton = "Most Viewed"; // Default selected button

  void _onButtonClick(String text) {
    setState(() {
      selectedButton = text;
    });
  }

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
                Text("Popular places", style: textTheme.headlineMedium),
                Text(
                  "View all",
                  style: textTheme.headlineSmall!.copyWith(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            Gap(16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonItem(
                    text: "Most Viewed",
                    onClick: _onButtonClick,
                    color: selectedButton == "Most Viewed" 
                        ? Colors.black 
                        : Colors.white,
                  ),
                  Gap(16),
                  ButtonItem(
                    text: "Nearby",
                    onClick: _onButtonClick,
                    color: selectedButton == "Nearby" 
                        ? Colors.black 
                        : Colors.white,
                  ),
                  Gap(16),
                  ButtonItem(
                    text: "Latest",
                    onClick: _onButtonClick,
                    color: selectedButton == "Latest" 
                        ? Colors.black 
                        : Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
