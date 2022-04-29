import 'package:find_my_parent_design/notification/notification_message_page.dart';
import 'package:find_my_parent_design/notification/resources_page.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'dashBoard_page.g.dart';

  @swidget
  Widget dashBoardPage(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            child: menu(),
          ),
          body: const TabBarView(
            children: [
              ResourcesPage(),
              NotificationMessagePage(),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
  menu() {
  return const TabBar(
    tabs: [
      Tab(
        icon: Icon(Icons.euro_symbol),
      ),
      Tab(
        icon: Icon(Icons.assignment),
      ),
      Tab(
        icon: Icon(Icons.account_balance_wallet),
      ),
      Tab(
        icon: Icon(Icons.settings),
      ),
    ],
  );
}
