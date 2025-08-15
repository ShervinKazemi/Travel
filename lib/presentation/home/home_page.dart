import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel/model/provider/home_provider.dart';
import 'package:travel/presentation/widget/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: HomeAppBar(),
    );
  }
}