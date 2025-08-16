import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/model/data/travel.dart';
import 'package:travel/presentation/widget/option_widget.dart';
import 'package:travel/util/glassmorphism.dart';

class TravelDetail extends StatelessWidget {
  const TravelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Travel;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Hero(
                            tag: "travel${data.name}",
                            child: Image.asset(data.image, fit: BoxFit.cover),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            left: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.circular(52),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.circular(52),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.bookmark,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ],
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data.name,
                                          style: textTheme.headlineMedium!
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          "Price",
                                          style: textTheme.displayMedium!
                                              .copyWith(
                                                color: Colors.grey.shade300,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Gap(8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.grey.shade300,
                                              size: 16,
                                            ),
                                            Text(
                                              "${data.city}, ${data.country}",
                                              style: textTheme.displayMedium!
                                                  .copyWith(
                                                    color: Colors.grey.shade300,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "\$ ${data.price}",
                                          style: textTheme.displayMedium!
                                              .copyWith(
                                                color: Colors.grey.shade300,
                                              ),
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
                  ),
                  Gap(16),
                  Text(
                    "Overview",
                    style: textTheme.headlineLarge,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionWidget(
                        text: data.time,
                        icon: Icons.timelapse_rounded,
                      ),
                      OptionWidget(text: data.tempreture, icon: Icons.cloud),
                      OptionWidget(text: data.rating, icon: Icons.star_rounded),
                    ],
                  ),
                  Gap(16),
                  Text(
                    data.description,
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.ltr,
                    style: textTheme.bodyLarge,
                  )
                ],
              ),
              Positioned(
                bottom: 16,
                right: 0,
                left: 0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32 , vertical: 16),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Book Now" , style: textTheme.headlineMedium!.copyWith(color: Colors.white)),
                      Gap(16),
                      Icon(
                        Icons.near_me_rounded,
                        size: 24,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
