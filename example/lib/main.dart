import 'package:flutter/material.dart';
import 'package:time_picker_spinner_pop_up_dialog/time_picker_spinner_pop_up_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Picker Spinner Pop Up',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(title: 'Time Picker Spinner Pop Up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 30,
            top: 60,
            child: TimePickerSpinnerPopUpDialog(
              time: DateTime.now(),
              minutesInterval: 1,
              secondsInterval: 1,
              is24HourMode: false,
              isShowSeconds: false,
              highlightedTextStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              spacing: 15,
              itemHeight: 35,
              isForce2Digits: true,
              alignment: Alignment.center,
              onTimeChange: (final dateTime) {},
              onSubmit: (final dateTime) {
                // Implement your logic with select dateTime
              },
            ),
          ),
        ],
      ),
    );
  }
}
