import 'package:Timely/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timeZoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';

    if (!timeZoneString.startsWith('-')) offsetSign = '+';

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildMenuButton('Clock', 'assets/clock_icon.png'),
              buildMenuButton('Alarm', 'assets/alarm_icon.png'),
              buildMenuButton('Timer', 'assets/timer_icon.png'),
              buildMenuButton('Stopwatch', 'assets/stopwatch_icon.png'),
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      'Timely',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          formattedTime,
                          style: TextStyle(
                              fontFamily: 'avenir',
                              color: Colors.white,
                              fontSize: 64),
                        ),
                        Text(
                          formattedDate,
                          style: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    fit: FlexFit.tight,
                    child: Align(
                      alignment: Alignment.center,
                      child: ClockView(
                        size: MediaQuery.of(context).size.height / 4,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Timezone',
                          style: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.language,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              'UTC' + offsetSign + timeZoneString,
                              style: TextStyle(
                                  fontFamily: 'avenir',
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildMenuButton(String title, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: FlatButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              scale: 1.5,
            ),
            SizedBox(height: 16),
            Text(
              title ?? '',
              style: TextStyle(
                  fontFamily: 'avenir', color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
