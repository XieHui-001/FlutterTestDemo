import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerPickerPage extends StatefulWidget{
  @override
  _TimerPickerWidget createState() => _TimerPickerWidget();
}

class _TimerPickerWidget extends State<TimerPickerPage>{


  // 时间选择 开始-结束
  // Future<void> _selectDateRange(BuildContext context) async {
  //   final DateTimeRange? picked = await showDateRangePicker(
  //     context: context,
  //     initialDateRange: DateTimeRange(
  //       start: DateTime.now(),
  //       end: DateTime.now().add(Duration(days: 7)),
  //     ),
  //     firstDate: DateTime(DateTime.now().year - 5),
  //     lastDate: DateTime(DateTime.now().year + 5),
  //   );
  //   if (picked != null)
  //     print({picked.start.toString() + ' - ' + picked.end.toString()});
  // }
  //
  // 时间选择 一天为单位选择
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      locale: Locale('zh', 'CN'),
      initialDate: DateTime.now(),
      firstDate: DateTime(2000, 1,1),
      lastDate: DateTime(2023,11,16),
    );
    if (picked != null){
      print({picked.toString()});
      _selectTime(context);
    }

  }

  Future<void> _selectTime(BuildContext context) async {
    final ThemeData theme = Theme.of(context);
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext? context, Widget? child) {
        return Localizations.override(context: context!!,
          child: child!,
        );
      },
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (picked != null)
      print({picked.hour.toString() + ':' + picked.minute.toString()});
  }




  @override
  Widget build(BuildContext context){
    return Center(child:
    TextButton(
        onPressed: () {
          _selectDate(context);
        },
        child: Text(
          'show date time picker',
          style: TextStyle(color: Colors.blue),
        )));
  }
}