import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  final List<Stool> stools;

  const Graph({Key? key, required this.stools}) : super(key: key);

  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    // fours is a fake list of events that I'm using to get a green line across the ideal value in the graph.
    var fours = <Stool>[];
    fours.add(Stool(
      dateTime: widget.stools[0].dateTime,
      type: 4,
      hasBlood: false,
    ));

    // need to work out a sensible value for the last event so that the smileys have space next to the real line graph.
    var totalTimeInData = widget
            .stools[widget.stools.length - 1].dateTime.millisecondsSinceEpoch -
        widget.stools[0].dateTime.millisecondsSinceEpoch;
    var durationToAdd = totalTimeInData == 0 ? 1000 : totalTimeInData ~/ 12;

    // use a different label style for the graph depending on the data in it
    const twoDays = 2 * 24 * 60 * 60 * 1000;
    final graphIntervalType = widget.stools.length >= 2
        ? DateTimeIntervalType.auto
        : DateTimeIntervalType.minutes;
    final graphDateFormat =
        totalTimeInData > twoDays ? DateFormat('MMM\ndd') : DateFormat('HH:mm');

    fours.add(
      Stool(
        dateTime: widget.stools[widget.stools.length - 1].dateTime
            .add(Duration(milliseconds: durationToAdd)),
        type: 4,
        hasBlood: false,
      ),
    );

    return SfCartesianChart(
      onTooltipRender: (args) => {args.header = "BSC"},
      backgroundColor: Colors.white,
      margin: AppPadding.regular,
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true,
        enablePinching: true,
        enableDoubleTapZooming: true,
        zoomMode: ZoomMode.x,
      ),
      title: ChartTitle(
        text: 'STOOL QUALITY',
        alignment: ChartAlignment.near,
        textStyle: const TextStyle(
          fontSize: AppSizes.regular,
        ),
      ),
      tooltipBehavior: TooltipBehavior(enable: false),
      onMarkerRender: (markerArgs) {
        if (markerArgs.pointIndex != null &&
            widget.stools[markerArgs.pointIndex!].hasBlood) {
          markerArgs.color = Colors.red;
        }
      },
      primaryXAxis: DateTimeAxis(
        rangePadding: ChartRangePadding.none,
        majorTickLines: const MajorTickLines(
          color: Colors.white,
        ),
        minorGridLines: const MinorGridLines(
          color: Colors.white,
        ),
        majorGridLines: const MajorGridLines(
          width: 0,
        ),
        axisLine: const AxisLine(
          width: 0,
        ),
        dateFormat: graphDateFormat,
        intervalType: graphIntervalType,
      ),
      primaryYAxis: NumericAxis(
        minimum: 1,
        maximum: 7,
        interval: 1,
        majorTickLines: const MajorTickLines(
          color: Colors.white,
        ),
        axisLine: const AxisLine(
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
            textStyle: AppTextStyles.smileyTextStyle,
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
            textStyle: AppTextStyles.smileyTextStyle,
          ),
          PlotBand(
            start: 3,
            end: 5,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f118}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.middle,
            textStyle: AppTextStyles.smileyTextStyle,
          ),
          PlotBand(
            start: 5,
            end: 6,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f11a}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.middle,
            textStyle: AppTextStyles.smileyTextStyle,
          ),
          PlotBand(
            start: 6,
            end: 7,
            color: Colors.white,
            opacity: 0.2,
            text: '\u{f119}',
            horizontalTextAlignment: TextAnchor.end,
            verticalTextAlignment: TextAnchor.start,
            textStyle: AppTextStyles.smileyTextStyle,
          ),
        ],
      ),
      series: <ChartSeries>[
        FastLineSeries<Stool, DateTime>(
          color: Colors.green,
          dataSource: fours,
          xValueMapper: (Stool event, int index) => event.dateTime,
          yValueMapper: (Stool event, int index) => event.type,
          markerSettings: const MarkerSettings(
            isVisible: false,
          ),
        ),
        FastLineSeries<Stool, DateTime>(
          color: Colors.black,
          dataSource: widget.stools,
          xValueMapper: (Stool event, int index) => event.dateTime,
          yValueMapper: (Stool event, int index) => event.type,
          markerSettings: const MarkerSettings(
            isVisible: true,
            borderColor: Colors.black,
            borderWidth: 2,
            color: Colors.white,
            height: 10,
            width: 10,
          ),
        ),
      ],
    );
  }
}
