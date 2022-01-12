
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Settings"),

    ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Choose Language: ",style: TextStyle(fontWeight: FontWeight.bold),),

                  Container(
                      child: DropDownList()),
                ],
              ),
            ],
          ),
        )
        );


  }
}

class DropDownList extends StatefulWidget {
  DropDownList({Key? key}) : super(key: key);
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String? dropdownvalue = 'English';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownvalue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 25,
      elevation: 16,
      style: TextStyle(color: Colors.blue),
      underline: Container(
        height:3,
        color: Colors.blueAccent,
      ),
      onChanged: (String? newValue){
        setState(() {
          dropdownvalue = newValue;
        });
      },
      items: <String>["English","Turkish","Russian","Kyrgyz"]
          .map<DropdownMenuItem<String>>((String val){
        // ignore: missing_required_param
        return DropdownMenuItem<String>(
          value: val,
          child: Text(val),
        );
      }).toList(),
    );
  }
}

