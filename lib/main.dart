import 'package:flutter/material.dart';
import 'new_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> list = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF998ddd),
        appBar: AppBar(
          title: const Text('Event Scheduler'),
          backgroundColor: Color(0xFF4b38bb),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: ((context, index) => list[index]),
        ),
        //helo
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Color(0xFF4b38bb),
              onPressed: () async {
                String textAdd = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewEvent(),
                  ),
                );
                setState(
                  () {
                    list.add(
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            textAdd,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),

                        // height: 50,
                        // width: double.infinity,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
