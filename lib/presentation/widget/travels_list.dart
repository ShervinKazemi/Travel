import 'package:flutter/material.dart';
import 'package:travel/model/data/travel.dart';
import 'package:travel/presentation/widget/travel_item.dart';

class TravelList extends StatelessWidget {
  final List<Travel> travels;
  const TravelList({super.key, required this.travels});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 82),
        itemExtent: 276,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: travels.length,
        itemBuilder: (context, index) => Padding(
          padding: index != 0 ? EdgeInsets.only(left: 16) : EdgeInsets.only(),
          child: TravelItem(
            travel: travels[index],
          ),
        ),
      ),
    );
  }
}