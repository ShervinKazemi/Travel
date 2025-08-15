import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/model/data/travel.dart';
import 'package:travel/util/glassmorphism.dart';

class TravelItem extends StatelessWidget {
  final Travel travel;
  const TravelItem({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(travel.image, fit: BoxFit.cover),
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(52),
                ),
                child: Icon(CupertinoIcons.heart, color: Colors.white, size: 24),
              ),
            ),
      
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: GlassMorphism(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${travel.name}, ",
                            style: theme.textTheme.headlineSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(travel.city, style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey.shade300
                          )),
                        ],
                      ),
                      Gap(8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey.shade300,
                                size: 16,
                              ),
                              Gap(4),
                              Text(
                                "${travel.city}, ${travel.country}",
                                style: theme.textTheme.headlineSmall!.copyWith(
                                  color: Colors.grey.shade300
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.star, size: 16, color: Colors.grey.shade300,),
                              Gap(4),
                              Text(
                                travel.rating,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  color: Colors.grey.shade300
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
