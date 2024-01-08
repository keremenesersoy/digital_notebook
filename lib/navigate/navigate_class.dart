import 'package:flutter/material.dart';

class NavigateClass {

     
  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        
        settings: const RouteSettings(

        )));
  }

}