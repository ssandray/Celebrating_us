import 'package:celebrating_us/calendar/calendar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calendar'),
      ),
      body: Column(children: <Widget>[
         Container(child: TableEvents(), height: 640),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [(BottomNavigationBarItem(label: 'Calendar', icon: Icon(Icons.calendar_month))),
       (BottomNavigationBarItem(label: 'List', icon: Icon(Icons.star))),
       ]),
    );
  }
}