import 'package:flutter/material.dart';

class DatePick extends StatefulWidget {
  @override
  _DatePick createState() => _DatePick();
}

class _DatePick extends State<DatePick> {
  DateTime? _datePick;
  int? _dateYear;
  int? _dateMonth;
  int? _dateDay;
  Future getDate() async {
    DateTime? _date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: DateTime(DateTime.now().year + 25),
    );
    if (_date != null) {
      setState(() {
        _datePick = _date;
        _dateYear = _date.year;
        _dateMonth = _date.month;
        _dateDay = _date.day;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Column(children: <Widget>[
      Container(
          child: _datePick == null
              ? Text('Please choice a date!',
                  style: TextStyle(
                    fontSize: 25,
                  ))
              : Text('Date: ${_dateDay}/${_dateMonth}/${_dateYear}',
                  style: TextStyle(
                    fontSize: 25,
                  ))),
      ElevatedButton(
          onPressed: () {
            getDate();
          },
          child: Text('Show Date',
              style: TextStyle(fontSize: 25, color: Colors.black))),
      ElevatedButton(
          onPressed: () {},
          child: Text('Show Time',
              style: TextStyle(fontSize: 25, color: Colors.black)))
    ])));
  }
}
