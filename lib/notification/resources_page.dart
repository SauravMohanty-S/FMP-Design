import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_svg/svg.dart';

part 'resources_page.g.dart';

@swidget
Widget resourcesPage(BuildContext context) {
  final profileImages = [
    "assets/girlsImage/p1.jpg",
    "assets/girlsImage/p2.jpg",
    "assets/girlsImage/p3.jpg",
    "assets/girlsImage/p4.jpg",
    "assets/girlsImage/p5.jpg",
  ];
  final otherImages = [
    "assets/otherPictures/a1.jpg",
    "assets/otherPictures/a2.jpg",
    "assets/otherPictures/a3.jpg",
    "assets/otherPictures/a4.jpg",
    "assets/otherPictures/a5.jpg",
    "assets/otherPictures/a6.jpg",
  ];

  return Scaffold(
    body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              "assets/Images/bg.svg",
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: const Color(0xfff7a4a6),
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(
                                    "assets/Images/back_image.png",
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffedece7),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(
                                    "assets/Images/edit-round.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Material(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffeae9e5),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 10),
                                child: Row(
                                  children: const [
                                    Icon(Icons.settings),
                                    SizedBox(width: 4),
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Material(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffeae9e5),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 10),
                                child: Row(
                                  children: const [
                                    Icon(Icons.logout),
                                    SizedBox(width: 4),
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        "Hi, First Name",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "What would you like learn about today?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "LATEST RESOURCES",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffb9b5a9),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 12,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 284.44,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(profileImages[index]),
                                      fit: BoxFit.fill),
                                ),
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "HOW TO",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "A simple guide to know if you are getting alienated",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 5,
                                ),
                            itemCount: 5),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "OTHER RESOURCES",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffb9b5a9),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 12,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: SizedBox(
                    height: 130,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              height: 72,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(otherImages[index]),
                                    fit: BoxFit.fill),
                              ),
                              padding: const EdgeInsets.all(24),
                            ),
                            const SizedBox(height: 3,),
                            const Text(
                              "SUBTOPIC",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 2,),
                            const SizedBox(
                              width: 100,
                              child: Text(
                                "This is a resource for the app",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                      itemCount: 6,
                    ),
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
