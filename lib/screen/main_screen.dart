import 'package:blue_theme_dashboard/constants.dart';
import 'package:blue_theme_dashboard/mainSide.dart';
import 'package:blue_theme_dashboard/mainsidesetting.dart';
import 'package:blue_theme_dashboard/models/chart_spline_data.dart';
import 'package:blue_theme_dashboard/models/mealData.dart';
import 'package:blue_theme_dashboard/screen/dashboard/Header.dart';
import 'package:blue_theme_dashboard/screen/dashboard/chart_column.dart';
import 'package:blue_theme_dashboard/screen/dashboard/chart_spline_area.dart';
import 'package:blue_theme_dashboard/screen/dashboard/row1.dart';
import 'package:blue_theme_dashboard/screen/dashboard/row2.dart';
import 'package:blue_theme_dashboard/screen/dashboard/row3.dart';
import 'package:blue_theme_dashboard/screen/side_main.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Row(
        children: [
          Expanded(child: SingleChildScrollView(child: SideMain())),
          Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  child: Column(
                    children: [
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Header(),
                      SizedBox(
                        height: defaultPadding * 2,
                      ),
                      Row1(),
                      SizedBox(
                        height: defaultPadding * 2,
                      ),
                      Row2(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Row3()
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
