import 'package:flutter/material.dart';

class MyListview extends StatefulWidget {
  const MyListview({Key? key}) : super(key: key);

  @override
  _MyListviewState createState() => _MyListviewState();
}

class _MyListviewState extends State<MyListview> {
  final nombres = [
    'Maria',
    'Jose',
    'Pedro',
    'Jeferson',
    'Gianicola',
    'Geovanna',
    'Lucia',
    'Geovanny'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My List Views'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: nombres.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: Container(
                                  constraints: BoxConstraints(
                                      minWidth: 200, maxHeight: 150),
                                  padding: EdgeInsets.all(28.0),
                                  child: Center(
                                    child: Text(nombres[index]),
                                  )));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(minHeight: 100),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: nombres.length,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                            child: Container(
                                constraints: BoxConstraints(
                                    minWidth: 200, maxHeight: 150),
                                padding: EdgeInsets.all(28.0),
                                child: Center(
                                  child: Text(nombres[index]),
                                )));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
