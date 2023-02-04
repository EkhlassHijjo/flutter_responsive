import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeScreen extends StatelessWidget {
  final dateTime = DateTime.now();
 final  dateTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: dateTimeController,
                keyboardType: TextInputType.datetime,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    firstDate: dateTime,
                    lastDate: DateTime.parse('2022-12-20'),
                  ).then((value) {
                    dateTimeController.text = DateFormat.yMMMd().format(value!);
                  });
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    // border: InputBorder.none,
                    hintText: 'Enter Date Time',
                    prefixIcon: Icon(
                      Icons.timeline_outlined,
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Text(dateTime.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
