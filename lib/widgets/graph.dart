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
  final smileyTextStyle = ChartTextStyle(
    fontFamily: 'FontAwesome5Free',
    color: Colors.black,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    // fours is a fake list of events that I'm using to get a green line across the ideal value in the graph.
    var fours = new List<Event>();
    fours.add(new Event(
      dateTime: widget.events[0].dateTime,
      type: 4,
    ));

    // need to work out a sensible value for the last event so that the smileys have space next to the real line graph.
    var totalTimeInData = widget
            .events[widget.events.length - 1].dateTime.millisecondsSinceEpoch -
        widget.events[0].dateTime.millisecondsSinceEpoch;
    var durationToAdd = totalTimeInData ~/ 12;

    fours.add(
      new Event(
        dateTime: widget.events[widget.events.length - 1].dateTime
            .add(Duration(milliseconds: durationToAdd)),
        type: 4,
      ),
    );

    return SfCartesianChart(
      onTooltipRender: (args) => {args.header = "BSC"},
      margin: EdgeInsets.all(16),
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true,
        enablePinching: true,
        enableDoubleTapZooming: true,
        zoomMode: ZoomMode.x,
      ),
      title: ChartTitle(
        text: 'STOOL QUALITY',
        alignment: ChartAlignment.near,
        textStyle: ChartTextStyle(
          fontSize: 16,
        ),
      ),
      tooltipBehavior: TooltipBehavior(enable: false),
      primaryXAxis: DateTimeAxis(
        rangePadding: ChartRangePadding.none,
        majorTickLines: MajorTickLines(
          color: Colors.white,
        ),
        minorGridLines: MinorGridLines(
          color: Colors.white,
        ),
        majorGridLines: MajorGridLines(
          width: 0,
        ),
        axisLine: AxisLine(
          width: 0,
        ),
        desiredIntervals: 5,
        dateFormat: DateFormat('MMM\ndd'),
        intervalType: DateTimeIntervalType.days,
      ),
      primaryYAxis: NumericAxis(
        minimum: 1,
        maximum: 7,
        interval: 1,
        majorTickLines: MajorTickLines(
          color: Colors.white,
        ),
        axisLine: AxisLine(
          color: Colors.white,
        ),
        rangePadding: ChartRangePadding.additional,
        plotBands: [
          PlotBand(
            start: 1,
            end: 2,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f119}',
            shouldRenderAboveSeries: true,
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.end,
            textStyle: smileyTextStyle,
          ),
          PlotBand(
            start: 2,
            end: 3,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f11a}',
            shouldRenderAboveSeries: true,
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.end,
            textStyle: smileyTextStyle,
          ),
          PlotBand(
            start: 3,
            end: 5,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f118}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.middle,
            textStyle: smileyTextStyle,
          ),
          PlotBand(
            start: 5,
            end: 6,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f11a}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.middle,
            textStyle: smileyTextStyle,
          ),
          PlotBand(
            start: 6,
            end: 7,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f119}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.start,
            textStyle: smileyTextStyle,
          ),
        ],
      ),
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
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.center,
            textStyle: ChartTextStyle(
              color: Colors.red,
            ),
          ),
          dataLabelMapper: (datum, index) {
            if (datum.bloodInStool != null && datum.bloodInStool) {
              return '*';
            }
            return ' ';
          },
        ),
        FastLineSeries<Event, DateTime>(
          color: Colors.green,
          dataSource: fours,
          xValueMapper: (Event event, int index) => event.dateTime,
          yValueMapper: (Event event, int index) => event.type,
          markerSettings: MarkerSettings(
            isVisible: false,
          ),
        ),
      ],
    );
  }
}
