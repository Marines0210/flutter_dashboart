import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'components/header.dart';
import 'components/staff/my_staff.dart';
import 'components/survey/survey.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: 16.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  MyStaff(),
                      const  SizedBox(height: 16.0),
                      HospitalSurvey(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
