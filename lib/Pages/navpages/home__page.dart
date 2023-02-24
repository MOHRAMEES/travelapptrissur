import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapptrissur/misc/colors.dart';
import 'package:travelapptrissur/widgets/App_large_text.dart';
import 'package:travelapptrissur/widgets/App_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    'balloning.png': 'Balloning',
    'hiking.png': 'Hiking',
    'kayaking.png': 'Kayaking',
    'snorkling': 'Snorkling',
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu text
          Container(
            padding: EdgeInsets.only(left: 20, top: 70),
            child: Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //Discover text
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Applargetext(text: 'Discover'),
          ),
          const SizedBox(
            height: 20,
          ),
          //tabbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      circleTabIndicator(color: AppColors.mainColor, radius: 4),
                  unselectedLabelColor: Colors.grey,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    const Tab(
                      text: 'Places',
                    ),
                    const Tab(
                      text: 'Insipiration',
                    ),
                    const Tab(
                      text: 'Emotions',
                    )
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage('img/mountain.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
              const Text('there'),
              const Text('bye')
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Applargetext(
                  text: 'Explore more',
                  size: 22,
                ),
                Apptext(
                  text: 'see all',
                  color: AppColors.textColor1,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 50),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/' + images.keys.elementAt(index)),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Apptext(
                            text: images.values.elementAt(index),
                            color: AppColors.textColor1,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class circleTabIndicator extends Decoration {
  final Color color;
  double radius;
  circleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _circlepainter(color: color, radius: radius);
  }
}

class _circlepainter extends BoxPainter {
  final Color color;
  double radius;
  _circlepainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleoffset = Offset(configuration.size!.width / 2 - radius,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleoffset, radius, _paint);
  }
}
