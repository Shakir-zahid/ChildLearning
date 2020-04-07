import 'package:child_learning_app/routes.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        title: ' Child Learning App',
        onGenerateRoute: Router.generateRoute,
    );
  }
}