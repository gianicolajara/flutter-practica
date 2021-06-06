import 'package:flutter/material.dart';
import 'package:livetemplate/src/views/MyListview/myListview.dart';
import 'package:livetemplate/src/views/datePicker/MyDatePicker.dart';
import 'package:livetemplate/src/views/lifeCycle/lifeCycle.dart';
import 'package:livetemplate/src/views/myCheckbox/myCheckbox.dart';
import 'package:livetemplate/src/views/myDialogs/myDialogs.dart';
import 'package:livetemplate/src/views/myHomePage/MyHomePage.dart';
import 'package:livetemplate/src/views/mySlider/mySlider.dart';
import 'package:livetemplate/src/views/mySnackbar/mySnackbar.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/cycle' : (context) => LifeCycle(),
        '/checkbox' : (context) => MyCheckbox(),
        '/datepicker' : (context) => MyDatePicker(),
        '/slider' : (context) => MySlider(),
        '/snackbar' : (context) => MySnackBar(),
        '/dialog' : (context) => MyDialogs(),
        '/listview' : (context) => MyListview(),
      },
    );
  }
}
