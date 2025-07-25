import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/l10n/app_localizations.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  final List<Stool> stools;
  final bool isLandscape;

  const Graph({super.key, required this.stools, required this.isLandscape});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    // Work out a sensible margin for the last event so that the smileys have space next to the real line graph.
    var totalTimeInData = widget
            .stools[widget.stools.length - 1].dateTime.millisecondsSinceEpoch -
        widget.stools[0].dateTime.millisecondsSinceEpoch;
    var graphPaddingInMs = totalTimeInData == 0 ? 1000 : totalTimeInData ~/ 12;

    // fours is a fake list of events that I'm using to get a green line across the ideal value in the graph.
    var fours = <Stool>[];
    fours.add(Stool.empty().copyWith(
        dateTime: widget.stools[0].dateTime
            .subtract(Duration(milliseconds: (graphPaddingInMs / 2).round()))));
    fours.add(
      Stool.empty().copyWith(
        dateTime: widget.stools[widget.stools.length - 1].dateTime
            .add(Duration(milliseconds: graphPaddingInMs)),
      ),
    );

    // use a different label style for the graph depending on the data in it
    const twoDays = 2 * 24 * 60 * 60 * 1000;
    final graphDateFormat = totalTimeInData > twoDays
        ? DateFormat(
            AppLocalizations.of(context)!.dateTimeFormatGraphMonthsDays)
        : DateFormat(
            AppLocalizations.of(context)!.dateTimeFormatGraphHoursMinutes);

    return SafeArea(
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        plotAreaBorderColor: Colors.white,
        margin: AppPadding.regular,
        zoomPanBehavior: ZoomPanBehavior(
          enablePanning: true,
          enablePinching: true,
          enableDoubleTapZooming: true,
          zoomMode: ZoomMode.x,
        ),
        title: widget.isLandscape
            ? ChartTitle()
            : ChartTitle(
                text: AppLocalizations.of(context)!.graphLabel,
                alignment: ChartAlignment.near,
                textStyle: const TextStyle(
                  fontSize: AppSizes.regular,
                ),
              ),
        tooltipBehavior: TooltipBehavior(enable: false),
        onMarkerRender: (markerArgs) {
          if (markerArgs.pointIndex != null &&
              widget.stools.length > markerArgs.pointIndex! &&
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
          intervalType: DateTimeIntervalType.auto,
        ),
        primaryYAxis: NumericAxis(
          minimum: 1,
          maximum: 7,
          interval: 1,
          plotOffset: 20,
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
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
            PlotBand(
              start: 2,
              end: 3,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f11a}',
              shouldRenderAboveSeries: true,
              horizontalTextAlignment: TextAnchor.end,
              verticalTextAlignment: TextAnchor.middle,
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
            PlotBand(
              start: 3,
              end: 4,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f118}',
              horizontalTextAlignment: TextAnchor.end,
              verticalTextAlignment: TextAnchor.middle,
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
            PlotBand(
              start: 4,
              end: 5,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f118}',
              horizontalTextAlignment: TextAnchor.end,
              verticalTextAlignment: TextAnchor.middle,
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
            PlotBand(
              start: 5,
              end: 6,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f11a}',
              horizontalTextAlignment: TextAnchor.end,
              verticalTextAlignment: TextAnchor.middle,
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
            PlotBand(
              start: 6,
              end: 7,
              color: Colors.white,
              opacity: 0.2,
              text: '\u{f119}',
              horizontalTextAlignment: TextAnchor.end,
              verticalTextAlignment: TextAnchor.start,
              textStyle: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        series: <CartesianSeries>[
          FastLineSeries<Stool, DateTime>(
            color: Colors.green,
            dataSource: fours,
            xValueMapper: (Stool event, int index) => event.dateTime,
            yValueMapper: (Stool event, int index) => event.type,
            markerSettings: const MarkerSettings(
              isVisible: true,
              height: 0,
              width: 0,
            ),
          ),
          FastLineSeries<Stool, DateTime>(
            color: Colors.black,
            dataSource: widget.stools,
            onPointTap: (pointInteractionDetails) {
              var index = pointInteractionDetails.viewportPointIndex!.toInt();
              // Sometimes the graph gives a viewportPointIndex of -1, so we'll use the pointIndex instead.
              if (index == -1) {
                index = pointInteractionDetails.pointIndex!;
              }

              if (index >= 0 && index < widget.stools.length) {
                final chosenStool = widget.stools[index];
                context.router.push(
                  AddRoute(
                    stoolId: chosenStool.id,
                  ),
                );
              }
            },
            xValueMapper: (Stool event, int index) => event.dateTime,
            yValueMapper: (Stool event, int index) => event.type,
            markerSettings: const MarkerSettings(
              isVisible: true,
              borderColor: Colors.black,
              borderWidth: 2,
              color: Colors.white,
              height: AppSizes.graphMarkerSize,
              width: AppSizes.graphMarkerSize,
              shape: DataMarkerType.circle,
            ),
          ),
        ],
      ),
    );
  }
}
