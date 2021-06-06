import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  String _dato = 'hola';
  late AppLifecycleState _state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Home Page'),
        ),
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      accountName: Text('Mei ling'),
                      accountEmail: Text('Meiling@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                        radius: 5,
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                      ),
                      otherAccountsPictures: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Text(
                            'M L',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ListTile(
                          title: Text('Cycle'),
                          trailing: Icon(Icons.access_alarms_outlined),
                          onTap: () => Navigator.pushNamed(context, '/cycle'),
                        ),
                        ListTile(
                          title: Text('CheckBox'),
                          trailing: Icon(Icons.check_box),
                          onTap: () => Navigator.pushNamed(context, '/checkbox'),
                        ),
                        ListTile(
                          title: Text('DatePicker'),
                          trailing: Icon(Icons.date_range),
                          onTap: () => Navigator.pushNamed(context, '/datepicker'),
                        ),
                        ListTile(
                          title: Text('Slider'),
                          trailing: Icon(Icons.slideshow_rounded),
                          onTap: () => Navigator.pushNamed(context, '/slider'),
                        ),
                        ListTile(
                          title: Text('Snackbar'),
                          trailing: Icon(Icons.slideshow_rounded),
                          onTap: () => Navigator.pushNamed(context, '/snackbar'),
                        ),
                        ListTile(
                          title: Text('Dialogs'),
                          trailing: Icon(Icons.chat),
                          onTap: () => Navigator.pushNamed(context, '/dialog'),
                        ),
                        ListTile(
                          title: Text('List View'),
                          trailing: Icon(Icons.chat),
                          onTap: () => Navigator.pushNamed(context, '/listview'),
                        ),
                        ListTile(
                          title: Text(
                            'Close',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          trailing: Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                )),
                Divider(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'App Gianicola V1.0.0',
                        style: TextStyle(
                            color: Colors.blueAccent[100],
                            fontSize: 10
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Text(_dato),
                        ElevatedButton(
                          onPressed: _myClick,
                          child: Text('Soy un botón'),
                        ),
                        TextButton(
                            onPressed: _myClick, child: Text('Text Button')),
                        Tooltip(
                          message: 'El boton sirve para x',
                          child: Text('Mantenme pulsado para instrucciones'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    WidgetsBinding.instance!.addObserver(this);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance!.addObserver(this);
    super.dispose();
  }

  @override
  void deactivate() {
    WidgetsBinding.instance!.addObserver(this);
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    WidgetsBinding.instance!.addObserver(this);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    _state = state;
    print(_state);
    print('xxxxxxxxxxxx');
  }

  void _myClick() {
    setState(() {
      _dato = _dato == 'hola' ? 'chao' : 'hola';
    });
  }
}
