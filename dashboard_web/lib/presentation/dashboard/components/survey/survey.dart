import 'package:dashboard_web/presentation/dashboard/components/survey/survey_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../models/chart_model.dart';
import '../../../../ui.theme/colors_app.dart';

class HospitalSurvey extends StatelessWidget {
  HospitalSurvey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Rendimiento académico",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              getSurveyWidgets(context),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Crecimiento (\$)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ),
                  Expanded(child: SurveyChart()),
                ],
              )
            ],
          ),
        ));
  }
}

Widget getSurveyWidgets(BuildContext context) {
  if (ResponsiveBreakpoints.of(context).isTablet) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      for (var item in ChartModel.survey)
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: items(item),
        )
    ]);
  }
  return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
    for (var item in ChartModel.survey) items(item),
  ]);
}

Widget items(ChartModel item) {
  return Column(
    children: [
      Text(
        "\$ ${item.income}",
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      Text(
        item.title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16.0),
      ),
    ],
  );
}
