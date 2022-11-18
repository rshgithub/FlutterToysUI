

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sections/my_app_bar.dart';
import '../tabs/doll_tab.dart';
import '../tabs/toy_tab.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'assets/images/toy5.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'assets/images/toy4.png',
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24, color: Colors.grey[600]),
                  ),
                  Text(
                    'Play Toys',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // doll page
                  DollTab(),
                  // toy page
                  ToyTab(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}