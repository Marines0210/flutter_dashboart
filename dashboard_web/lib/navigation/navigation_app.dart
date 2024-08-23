
import 'package:dashboard_web/navigation/route.dart';
import 'package:dashboard_web/presentation/studets/student_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/main/main_screen.dart';
import '../presentation/studets/components/student_details.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case mainScreen:
        return getPageRoute(MainScreen());
      case studentsDetails:
        return getPageRoute(StudentDetails());
      default:
        return _errorRoute();
    }
  }

  static getPageRoute(var page )=> MaterialPageRoute(builder: (_) =>page);

  // error screen
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Error ! No se encontro la ventana',
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    });
  }
}


