import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

//import 'package:table_calendar/table_calendar.dart';

class sakhta extends StatefulWidget {
  // const DropdownButtonExample({super.key});

  @override
  State<sakhta> createState() => _sakhtaState();
}

class _sakhtaState extends State<sakhta> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff011638),
          title: const Text(
            "Salade",
            style: TextStyle(fontSize: 18, color: Color(0xFFCE6D39)),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.check,
                color: Color.fromARGB(255, 252, 116, 25),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SfSlider(
          value: _value,
          min: 0.0,
          max: 300.0,
          interval: 100,
          showLabels: true,
          showTicks: true,
          enableTooltip: true,
          numberFormat: NumberFormat("g"),
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
      ),
    );
  }
}
