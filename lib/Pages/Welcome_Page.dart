import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapptrissur/widgets/App_large_text.dart';
import 'package:travelapptrissur/widgets/App_text.dart';
import 'package:travelapptrissur/widgets/Responsive_button.dart';

import '../misc/colors.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  List img = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/' + img[index]),
                        fit: BoxFit.cover)),
                child: Container(
                    margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Applargetext(text: 'Trips'),
                              Applargetext(
                                text: 'Mountain',
                                size: 30,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 250,
                                child: Apptext(
                                  text:
                                      'Mountain Hikes gives you an incredible sense of freedom along with endurance tests',
                                  color: AppColors.textColor1,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              ResponsiveButton(
                                width: 100,
                              )
                            ],
                          ),
                          Column(
                            children: List.generate(
                                3,
                                (indexDots) => Container(
                                      margin: EdgeInsets.only(bottom: 2),
                                      width: 8,
                                      height: index == indexDots ? 25 : 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: index == indexDots
                                            ? AppColors.mainColor
                                            : AppColors.mainColor
                                                .withOpacity(0.3),
                                      ),
                                    )),
                          )
                        ])));
          }),
    );
  }
}
