import 'package:child_learning_app/Screen/NumbersPage.dart';
import 'package:child_learning_app/Screen/alphabetPage.dart';
import 'package:flutter/material.dart';

import 'Screen/HomeView.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
   var  args= settings.arguments;
    switch (settings.name) {
      case '/' :
        return  MaterialPageRoute(
          builder: (_)=> HomeView()
        );
       case 'alphabetPage' :
        return  MaterialPageRoute(
          builder: (_)=> AlphabetPage(args)
        );
       case 'numberPage' :
        return  MaterialPageRoute(
          builder: (_)=> NumbersPage(args)
        );
     
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}