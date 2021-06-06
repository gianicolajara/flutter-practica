import 'package:flutter/material.dart';

class MyDialogs extends StatefulWidget {
  const MyDialogs({Key? key}) : super(key: key);

  @override
  _MyDialogsState createState() => _MyDialogsState();
}

enum dialogOptions { YES, NOT }

class _MyDialogsState extends State<MyDialogs> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _event(context) async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('soy un simple dialog'),
            children: [
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context, dialogOptions.YES),
                child: Text('Si'),
              ),
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context, dialogOptions.NOT),
                child: Text('No'),
              )
            ],
          );
        })) {
      case dialogOptions.YES:
        _setValue('Yes');
        break;
      case dialogOptions.NOT:
        _setValue('Not');
        break;
    }
  }

  Future _showAlert(BuildContext context, String msg) async {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Alert Dialog'),
        content: Text(msg),
        actions: [
          ElevatedButton(onPressed: (){}, child: Text('Yes')),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Not')),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Dialogs'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(28.0),
              child: Container(
                padding: EdgeInsets.all(28.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Simple Dialog',
                      style: TextStyle(fontSize: 30),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _event(context);
                        },
                        child: Text('Abrir Simple dialog')),
                    Text('El texto es: $_value'),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(28.0),
              child: Container(
                padding: EdgeInsets.all(28.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Alert Dialog',
                      style: TextStyle(fontSize: 30),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _showAlert(context, 'Esto es un mensaje enviado por argumento');
                        },
                        child: Text('Abrir Alert Dialog')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
