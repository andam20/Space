import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacee/HomePage.dart';
import 'package:spacee/account.dart';
import 'package:spacee/chat.dart';
import 'package:spacee/company.dart';
import 'package:spacee/month.dart';
import 'package:spacee/recently.dart';
import 'package:spacee/survey.dart';
import 'package:spacee/week.dart';
import 'components/big_text_header.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({Key? key}) : super(key: key);

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List pages = const [Home(), Chat(), Survey(), Companies(), Account()];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final List<String> Categoried = <String>['Home', 'Week', 'Month'];
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        animationDuration: Duration(seconds: 2),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[200],
          body: Container(
              child: Center(
            child: pages[_currentIndex],
          )),
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.white,
              height: 80,
              backgroundColor: Colors.red,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.grey[300],
              animationDuration: Duration(seconds: 1),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: _currentIndex,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.house),
                    selectedIcon: Icon(Icons.house),
                    label: "home"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                    selectedIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
                    label: "Chat"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.chart_bar_circle_fill),
                    selectedIcon: Icon(CupertinoIcons.chart_bar_circle_fill),
                    label: "survey"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.building_2_fill),
                    selectedIcon: Icon(CupertinoIcons.building_2_fill),
                    label: "Company"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.person_alt_circle_fill),
                    selectedIcon: Icon(CupertinoIcons.person_alt_circle_fill),
                    label: "About"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
