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
        onTooltipRender: (args) => {args.header = "BSC"},
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
          plotBands: [
            PlotBand(
              horizontalTextAlignment: TextAnchor.middle,
              start: 1,
              end: 2,
              color: Colors.red,
              opacity: 0.2,
              text: 'Not so good',
              textStyle: ChartTextStyle(
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 2,
              end: 3,
              color: Colors.orange,
              opacity: 0.2,
              text: 'Not bad',
              textStyle: ChartTextStyle(
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 3,
              end: 5,
              color: Colors.green,
              opacity: 0.2,
              text: 'Good',
              textStyle: ChartTextStyle(
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 5,
              end: 6,
              color: Colors.orange,
              opacity: 0.2,
              text: 'Not bad',
              textStyle: ChartTextStyle(
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 6,
              end: 7,
              color: Colors.red,
              opacity: 0.2,
              text: 'Not so good',
              textStyle: ChartTextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        zoomPanBehavior: ZoomPanBehavior(
          enablePanning: true,
          enablePinching: true,
          zoomMode: ZoomMode.x,
        ),
        title: ChartTitle(text: 'Stool Quality'),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries>[
          FastLineSeries<Event, DateTime>(
            color: Theme.of(context).primaryColor,
            dataSource: widget.events,
            xValueMapper: (Event event, int index) => event.dateTime,
            yValueMapper: (Event event, int index) => event.type,
            markerSettings: MarkerSettings(
              isVisible: true,
              borderColor: Colors.blue,
              borderWidth: 2,
              color: Colors.white,
              height: 10,
              width: 10,
            ),
            dataLabelSettings: DataLabelSettings(isVisible: false),
          )
        ]);
  }
}
