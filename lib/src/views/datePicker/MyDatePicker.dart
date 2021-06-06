import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? selectDate = null;
  TimeOfDay? selectTime = null;

  Future _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 30)),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if(picked != null && picked != selectDate){
      setState(() {
        selectDate = picked;
      });
    }
  }

  Future _selectedTime(BuildContext context)async{
    final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );

    if(picked != null && picked != selectTime){
      setState(() {
        selectTime = picked;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Obtener una fecha', style: TextStyle(fontSize: 25),),
                    ElevatedButton(onPressed: (){
                      _selectedDate(context);
                    }, child: Text('Abrir select date')),
                    if(selectDate != null)
                      CalendarDatePicker(
                          initialDate: selectDate ?? DateTime.now(),
                          firstDate: DateTime.now().subtract(Duration(days: 30)),
                          lastDate: DateTime.now().add(Duration(days: 30)),
                          onDateChanged: (value){
                            print(value);
                          }
                      ),
                    ElevatedButton(onPressed: (){
                      _selectedTime(context);
                    }, child: Text('Abrir select time')),
                    if(selectTime != null)
                      Text(selectTime.toString())
                  ],
                ),
              ),
            )

          ],
        ),
      )
    );
  }
}
