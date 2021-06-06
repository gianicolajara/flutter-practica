import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  final GlobalKey<ScaffoldState> _scaffoldGlobalKey =
      GlobalKey<ScaffoldState>();
  final snackBar = SnackBar(
    content: Text('Soy un Snackbar'),
    action: SnackBarAction(
      onPressed: () {},
      label: 'Undo',
    ),
  );

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future _simpleDialog() async{
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldGlobalKey,
      appBar: AppBar(
        title: Text('My Snackbar'),
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
                          'My Snackbar',
                          style: TextStyle(fontSize: 30),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _showSnackbar(context);
                            },
                            child: Text('Snackbar'))
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
