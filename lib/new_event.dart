import 'package:flutter/material.dart';

class AddNewEvent extends StatefulWidget {
  const AddNewEvent({Key? key}) : super(key: key);

  @override
  State<AddNewEvent> createState() => _AddNewEventState();
}

class _AddNewEventState extends State<AddNewEvent> {
  final controller = TextEditingController();
  dynamic result;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF998ddd),
        appBar: AppBar(
          title: Text('New Event'),
          backgroundColor: Color(0xFF4b38bb),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: controller,
                onChanged: (value) => result = value,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Color(0xFF4b38bb),
                  labelText: 'Event',
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFbab3e8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context, result);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
