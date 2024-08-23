

import 'package:flutter/material.dart';
import '../../ui.theme/colors_app.dart';
import '../dashboard/components/header.dart';
import 'components/students_table.dart';

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding( padding: EdgeInsets.all(16.0),  child:Column(
      children: [
        Header(),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          ElevatedButton(onPressed: (){}, child: Text("Nuevo Alumno"),style: ElevatedButton.styleFrom(backgroundColor: purple),),
        ],),
        SizedBox(height: 16.0),
        Expanded(
            flex: 2,
            child: StudentsTable())
      ],
    ));
  }
}
