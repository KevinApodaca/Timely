import 'package:Timely/enums.dart';

import 'alartm_info.dart';
import 'menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', imageSrc: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSrc: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer, title: 'Timer', imageSrc: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', imageSrc: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)), desc: 'Office Hours'),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)), desc: 'Roast Alex'),
];
