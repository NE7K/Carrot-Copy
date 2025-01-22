import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('금호동3가'), actions: [Icon(Icons.search), Icon(Icons.list), Icon(Icons.add_alert)]),
        // actions icon 간격 조, appbar border
        body: Container(
          child: Row(
            children: [
              Image.asset('test.jpg', width: 150),
              // margin, padding
              Container(
                child: Column(
                  children: [ Text('캐논'), Text('금호 - 끌올 10분 전'), Text('680,000원'), Icon(Icons.heart_broken)],
                  // 1. font size 2. font color gray 3. font bold set 4. heart만 오른쪽
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
