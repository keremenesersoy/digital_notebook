import 'package:digital_notebook/color/colors.dart';
import 'package:digital_notebook/pages/login_page.dart';
import 'package:digital_notebook/theme/icon_theme.dart';
import 'package:flutter/material.dart';

class ProjectAppBar {
  
  AppBar newMethod(double appBarHeight) {
    return AppBar(
    backgroundColor: ProjectColors.projectMainColor,
    title: PngImages(path: 'logo', height: appBarHeight),
    centerTitle: true,
    iconTheme: IconThemeForAppBar().appBarIconTheme,
  );
  }
}

