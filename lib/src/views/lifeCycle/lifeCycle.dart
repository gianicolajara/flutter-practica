import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({Key? key}) : super(key: key);

  @override
  _LifeCycleState createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> with WidgetsBindingObserver{
  late AppLifecycleState _state;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _state = state;
    print(state);
    print('xxxxxxxxxxxxxxxxxxx');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Home Page'),
        ),
        body: Container(
          child: Text('hola'),
        )
    );
  }
}
