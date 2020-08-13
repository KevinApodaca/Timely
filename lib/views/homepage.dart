import 'package:Timely/widgets/clock_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Container(
        padding: EdgeInsets.all(32),
        color: Color(0xFF2D2F41),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Timely',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Timely',
              style: TextStyle(color: Colors.white, fontSize: 64),
            ),
            Text(
              'Timely',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ClockView(),
            Text(
              'Timezone',
              style: TextStyle(color: Colors.white, fontSize: 20),
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
                  'UTC',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
