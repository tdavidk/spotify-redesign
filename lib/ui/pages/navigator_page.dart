import 'package:flutter/material.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/ui/pages/artics_page.dart';
import 'package:spotify/ui/pages/home_page.dart';
import 'package:spotify/ui/pages/profile_page.dart';

import '../../res/colours.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  DateTime? currentBackPressTime;
  int _selectedIndex = 0;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      return Future.value(false);
    }
    return Future.value(true);
  }

  final _layoutPage = [
    const HomePage(),
    const Scaffold(
        backgroundColor: Colours.background,
        body: Center(child: Text('Coming Soon'))),
    const ArticsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Stack(
          children: [
            _layoutPage.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 78,
        decoration: const BoxDecoration(
          color: Colours.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: bottomNavBarItem(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  isSelected: _selectedIndex == 0 ? true : false,
                  assetPath: _selectedIndex == 0
                      ? MediaRes.iconHomeFill
                      : MediaRes.iconHomeOutline,
                ),
              ),
              Expanded(
                child: bottomNavBarItem(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  isSelected: _selectedIndex == 1 ? true : false,
                  assetPath: _selectedIndex == 1
                      ? MediaRes.iconExploreFill
                      : MediaRes.iconExploreOutline,
                ),
              ),
              Expanded(
                child: bottomNavBarItem(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  isSelected: _selectedIndex == 2 ? true : false,
                  assetPath: _selectedIndex == 2
                      ? MediaRes.iconFavFill
                      : MediaRes.iconFavOutline,
                ),
              ),
              Expanded(
                child: bottomNavBarItem(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  isSelected: _selectedIndex == 3 ? true : false,
                  assetPath: _selectedIndex == 3
                      ? MediaRes.iconProfileFill
                      : MediaRes.iconProfileOutline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavBarItem({
    required String assetPath,
    Function()? onTap,
    required bool isSelected,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSelected
              ? Container(
                  height: 4,
                  width: 23,
                  decoration: const BoxDecoration(
                      color: Colours.green,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(3.5))),
                )
              : const SizedBox(
                  height: 4,
                  width: 23,
                ),
          const SizedBox(height: 19),
          Image.asset(
            assetPath,
            width: 32,
            height: 32,
            fit: BoxFit.cover,
            // color: isSelected ? Colours.green : Colours.grey,
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
