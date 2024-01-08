import 'package:digital_notebook/appbar/appbar.dart';
import 'package:digital_notebook/color/colors.dart';
import 'package:digital_notebook/pages/notebook.dart';
import 'package:digital_notebook/pages/settings_page.dart';
// import 'package:digital_notebook/color/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  void changeIndex(int index) {
    _currentIndex = index;
  }

  Widget selectTab(int tabNumber) {
    if (tabNumber == 0) {
      return const NotebookPage();
    } else if (tabNumber == 1) {
      return const SettingsPage();
    } else {
      return const Text('Cikis');
    }
  }

  @override
  Widget build(BuildContext context) {
    var appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    return Scaffold(
      appBar: ProjectAppBar().newMethod(appBarHeight),

      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ProjectColors.purpleVanity,
          backgroundColor: ProjectColors.projectMainColor,
          selectedFontSize: 18,
          selectedIconTheme: const IconThemeData(size: 36),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              changeIndex(index);
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.notes_rounded), label: "Notebook"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
          ]),
      
      body: Center(child: selectTab(_currentIndex)),
    );
  }
}
