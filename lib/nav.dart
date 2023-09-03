import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes/recipes.dart';
import 'package:recipes/search.dart';
import 'package:recipes/settings.dart';
import 'package:recipes/training.dart';

import 'Recipe.dart';
import 'lesson.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Recipes(),
    Training(),
    Search(),
    Lesson(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            }),
            icon: SvgPicture.asset(
              "assets/icons/settings_active.svg",
              width: 24,
              height: 24,
            ),
          ),
        ),
      ]),
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset("assets/icons/file-text_active.svg")
                : SvgPicture.asset("assets/icons/file-text.svg"),
            label: 'Рецепты',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset("assets/icons/teacher_active.svg")
                : SvgPicture.asset("assets/icons/teacher.svg"),
            label: 'Обучение',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset("assets/icons/search_active.svg")
                : SvgPicture.asset("assets/icons/search.svg"),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset("assets/icons/video_active.svg")
                : SvgPicture.asset("assets/icons/video.svg"),
            label: 'Уроки',
          ),
        ],
        unselectedFontSize: 12,
        selectedFontSize: 12,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffE69D2B),
        unselectedItemColor: const Color(0xff8E8E93),
        onTap: onItemTapped,
      ),
    );
  }
}
