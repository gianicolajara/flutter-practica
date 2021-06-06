import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 0.0;

  void _onChangedSliderValue(double value) =>
      setState(() => _sliderValue = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Slider'),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'My Slider',
                          style: TextStyle(fontSize: 30),
                        ),
                        Divider(),
                        Slider(
                            value: _sliderValue,
                            onChanged: (double value) =>
                                _onChangedSliderValue(value)),
                        Text((_sliderValue*100).round().toString())
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
