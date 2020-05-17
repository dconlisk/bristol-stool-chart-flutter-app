import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
          majorTickLines: MajorTickLines(color: Colors.white,),
          minorGridLines: MinorGridLines(color: Colors.white,),
          axisLine: AxisLine(
            // color: Colors.white,
          ),
          desiredIntervals: 5,
          dateFormat: DateFormat('MMM dd'),
          intervalType: DateTimeIntervalType.days,
        ),
        primaryYAxis: NumericAxis(
          minimum: 1,
          maximum: 7,
          interval: 1,
          majorTickLines: MajorTickLines(color: Colors.white,),
          axisLine: AxisLine(
            color: Colors.white,
          ),
          rangePadding: ChartRangePadding.none,
          plotBands: [
            PlotBand(
              start: 1,
              end: 2,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f119}',
              horizontalTextAlignment: TextAnchor.end,
              textStyle: ChartTextStyle(
                fontFamily: 'FontAwesome5Free',
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 2,
              end: 3,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f11a}',
              horizontalTextAlignment: TextAnchor.end,
              textStyle: ChartTextStyle(
                fontFamily: 'FontAwesome5Free',
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 3,
              end: 5,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f118}',
              horizontalTextAlignment: TextAnchor.end,
              textStyle: ChartTextStyle(
                fontFamily: 'FontAwesome5Free',
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 5,
              end: 6,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f11a}',
              horizontalTextAlignment: TextAnchor.end,
              textStyle: ChartTextStyle(
                fontFamily: 'FontAwesome5Free',
                color: Colors.black,
              ),
            ),
            PlotBand(
              start: 6,
              end: 7,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f119}',
              horizontalTextAlignment: TextAnchor.end,
              textStyle: ChartTextStyle(
                fontFamily: 'FontAwesome5Free',
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
        title: ChartTitle(
          text: 'STOOL QUALITY',
          alignment: ChartAlignment.near,
          textStyle: ChartTextStyle(
            fontSize: 16,
          ),
        ),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries>[
          FastLineSeries<Event, DateTime>(
            color: Colors.black,
            dataSource: widget.events,
            xValueMapper: (Event event, int index) => event.dateTime,
            yValueMapper: (Event event, int index) => event.type,
            markerSettings: MarkerSettings(
              isVisible: true,
              borderColor: Colors.black,
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
