import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool _isChecked = false;
  bool _isSwitched = false;

  int _valueRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: [
              Text('Opciones'),
              Checkbox(
                value: _isChecked,
                onChanged: (value) => _onChangedCheckBox(value!),
              ),
              ElevatedButton(
                  onPressed: _onPressedObtainCheckboxValue,
                  child: Text('obtener valor checkbox')),
              Switch(
                  value: _isSwitched,
                  onChanged: (value) => _onChangedSwitch(value),),
              ElevatedButton(
                  onPressed: _onPressedObtainSwitchValue,
                  child: Text('obtener valor switch')),
              Text('Elige una opción'),
              Divider(),
              Text('Venezuela'),
              Radio(value: 0, groupValue: _valueRadio, onChanged: (value)=>_onChangedRadio(value)),
              Text('Colombia'),
              Radio(value: 1, groupValue: _valueRadio, onChanged: (value)=>_onChangedRadio(value)),
              Text('Peru'),
              Radio(value: 2, groupValue: _valueRadio, onChanged: (value)=>_onChangedRadio(value)),
              Text('Argentina'),
              Radio(value: 3, groupValue: _valueRadio, onChanged: (value)=>_onChangedRadio(value)),
              ElevatedButton(onPressed: _onPressedObtainRadioValue, child: Text('Obtener valor Radio')),
            ],
          ),
        ),
      ),
    );
  }

  void _onChangedCheckBox(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  void _onChangedSwitch(bool value) {
    setState(() {
      _isSwitched = value;
    });
  }

  void _onChangedRadio(value){
    setState(() {
      _valueRadio = value;
    });
  }

  void _onPressedObtainCheckboxValue() {
    print('Valor de check $_isChecked');
  }

  void _onPressedObtainSwitchValue() {
    print('Valor de switch $_isSwitched');
  }
  void _onPressedObtainRadioValue() {
    print('Valor de radio $_valueRadio');
  }

}
