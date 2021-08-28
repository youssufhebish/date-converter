import 'package:flutter/material.dart';

import 'date_coverter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Date Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home());
  }
}

class Home extends StatelessWidget {

  String defaultDate = '2021-08-26T13:21:00Z';
  String anotherDate = '2021-08-24T03:21:00Z';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Date Converter'.toUpperCase(),
          ),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('default_API_date => $defaultDate'),
                Text('default_month_form => ${DateConverter.dateConverterMonth(defaultDate)}'),
                Text('default_date_form => ${DateConverter.dateConverterOnly(defaultDate)}'),
                Text('default_since_form => ${DateConverter.dateConverterSince(defaultDate)}'),
                Text('default_hours_24_mode => ${DateConverter.dateConverterHours24Mode(defaultDate)}'),
                Text('default_hours_AM_PM_mode => ${DateConverter.dateConverterHoursAmPmMode(defaultDate)}'),
                Text('we_can_merging_date&hour_methods_like_this'),
                Center(
                  child: Text('${DateConverter.dateConverterOnly(defaultDate)} ${DateConverter.dateConverterHoursAmPmMode(defaultDate)}'),
                ),
              ],
            ),
            SizedBox(height: 25.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('another example'),
                Text('default_API_date => $anotherDate'),
                Text('default_month_form => ${DateConverter.dateConverterMonth(anotherDate)}'),
                Text('default_date_form => ${DateConverter.dateConverterOnly(anotherDate)}'),
                Text('default_since_form => ${DateConverter.dateConverterSince(anotherDate)}'),
                Text('default_hours_24_mode => ${DateConverter.dateConverterHours24Mode(anotherDate)}'),
                Text('default_hours_AM_PM_mode => ${DateConverter.dateConverterHoursAmPmMode(anotherDate)}'),
                Text('we_can_merging_date&hour_methods_like_this'),
                Center(
                  child: Text('${DateConverter.dateConverterOnly(anotherDate)} ${DateConverter.dateConverterHoursAmPmMode(anotherDate)}'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
