import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'notification_message_page.g.dart';

@swidget
Widget notificationMessagePage(BuildContext context) {
  final option = ["Name", "Address", "Phone Number"];
  Map emptyList = {
    "name": [
      "Dan Wells",
      "Will Wade",
      "Beverly Gray",
      "Will Wade",
      "Beverly Gray"
    ],
    "subTitle": [
      "Have you sent the...",
      "You know this?",
      "You should have been",
      "You know this?",
      "You should have been",
    ],
    "dp": [
      "assets/girlsImage/p1.jpg",
      "assets/girlsImage/p2.jpg",
      "assets/girlsImage/p3.jpg",
      "assets/girlsImage/p2.jpg",
      "assets/girlsImage/p3.jpg",
    ]
  };
  final textController = TextEditingController();

  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Stack(
            children: [
              Column(
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
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffa4a3),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 2),
                      ],
                    ),
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Any Keyword',
                        hintStyle: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffffffff),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "PINNED",
                    style: TextStyle(
                      color: Color(0xff717a9a),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: (emptyList["dp"].length * 60.0),
                    child: ListView.separated(
                        itemBuilder: (_, index) {
                          return Slidable(
                            key: const ValueKey(0),

                            endActionPane: const ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: doNothing,
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.push_pin,
                                ),
                                SlidableAction(
                                  flex: 1,
                                  onPressed: doNothing,
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.volume_mute,
                                ),
                                SlidableAction(
                                  onPressed: doNothing,
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                ),
                              ],
                            ),
                            child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        emptyList["dp"]!.elementAt(index)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          emptyList["name"]!.elementAt(index),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff717a9a),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          emptyList["subTitle"]!.elementAt(index),
                                          style: const TextStyle(
                                            color: Color(0xff717a9a),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 18,
                                    width: 18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xffbf0606),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                          );
                        },
                        separatorBuilder: (_, index) => const SizedBox(
                              height: 24,
                            ),
                        itemCount: emptyList["dp"].length),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "OTHERS",
                    style: TextStyle(
                      color: Color(0xff717a9a),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  for (int i = 0; i < emptyList["dp"].length; i++)
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(emptyList["dp"]!.elementAt(i)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    emptyList["name"]!.elementAt(i),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff717a9a),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    emptyList["subTitle"]!.elementAt(i),
                                    style: const TextStyle(
                                      color: Color(0xff717a9a),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 18,
                              width: 18,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffbf0606),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Load More",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void doNothing(BuildContext context) {}
