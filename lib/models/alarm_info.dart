import 'package:flutter/material.dart';

class AlarmInfo {
  DateTime alarmDateTime;
  String desc;
  bool isActive;
  List<Color> gradientColors;

  AlarmInfo(this.alarmDateTime, {this.desc, List<Color> gradientColors});
}
