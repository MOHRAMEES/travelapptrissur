import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapptrissur/misc/colors.dart';
import 'package:travelapptrissur/widgets/App_buttons.dart';
import 'package:travelapptrissur/widgets/App_large_text.dart';
import 'package:travelapptrissur/widgets/App_text.dart';
import 'package:travelapptrissur/widgets/Responsive_button.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  int gottenstars = 4;
  int selectindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  left: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('img/mountain.jpeg'),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                  top: 180,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Applargetext(
                              text: 'Yosemite',
                              color: Colors.black.withOpacity(0.7),
                            ),
                            Applargetext(
                              text: '\$ 250',
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Apptext(
                              text: 'USA, California',
                              color: AppColors.textColor1,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < gottenstars
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Apptext(
                              text: '(4.0)',
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Applargetext(
                          text: 'People',
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Apptext(
                          text: 'Number of people in your group',
                          color: AppColors.mainTextColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectindex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: Appbutton(
                                  backgroundcolor: selectindex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  color: selectindex == index
                                      ? Colors.white
                                      : Colors.black,
                                  bordercolor: selectindex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  size: 50,
                                  text: (index + 1).toString(),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Applargetext(
                          text: 'Description',
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        Apptext(
                          text:
                              'You must go for a travel.Travelling Helps get rid of pressure.Go to the mountains to see the nature.',
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      Appbutton(
                        backgroundcolor: Colors.white,
                        color: AppColors.textColor2,
                        bordercolor: AppColors.textColor2,
                        size: 60,
                        isIcon: true,
                        icon: Icons.favorite_border,
                      ),
                      SizedBox(width: 20,),
                      // ResponsiveButton(
                      // ,
                      //   isResponsive: true,
                      
                      // )
                    ],
                  ))
            ],
          )),
    );
  }
}
