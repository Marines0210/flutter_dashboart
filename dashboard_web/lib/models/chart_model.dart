class ChartModel {
  String title;
  int income;
  ChartModel({this.title="",this.income=0});

  static List<ChartModel> survey = [
    ChartModel(title: "Ingresos de hoy",income: 105),
    ChartModel(title: "Ingresos de la semana",income: 305),
    ChartModel(title: "Ingreso del mes",income: 1450),
    ChartModel(title: "Ingreso del año",income: 8000),
  ];
}