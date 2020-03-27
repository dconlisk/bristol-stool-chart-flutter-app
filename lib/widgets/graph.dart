import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/event.dart';

class Graph extends StatefulWidget {
  final List<Event> events;

  Graph(this.events);
  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        primaryXAxis: DateTimeAxis(
          rangePadding: ChartRangePadding.none,
          title: AxisTitle(text: 'Date'),
        ),
        primaryYAxis: NumericAxis(
          minimum: 1,
          maximum: 7,
          interval: 1,
          rangePadding: ChartRangePadding.none,
          title: AxisTitle(text: 'Bristol Stool Chart value'),
        ),
        title: ChartTitle(text: 'Stool Quality'),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries>[
          FastLineSeries<Event, DateTime>(
            color: Colors.red,
            dataSource: widget.events,
            xValueMapper: (Event event, int index) => event.dateTime,
            yValueMapper: (Event event, int index) => event.type,
            // Enable data label
            dataLabelSettings: DataLabelSettings(isVisible: true),
          )
        ]);
  }
}
