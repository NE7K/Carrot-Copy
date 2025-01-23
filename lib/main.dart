import 'package:flutter/foundation.dart' show kIsWeb;
// 웹에서 빌드 가능하도록 설정

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
        appBar: AppBar(
          titleSpacing: 30.0, // title spacing 간격 조절
            title: Text('금호동3가', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20 ) ),
            actions: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)), // appbar action iconbutton padding 값
              IconButton(icon: const Icon(Icons.search_rounded), onPressed: () {} ),
              IconButton(icon: Icon(Icons.list), onPressed: () {} ),
              IconButton(icon: Icon(Icons.access_alarm_outlined), onPressed: () {} ),
        // actions icon 간격 조, appbar border
      ]),
        body: Container(
          child: Row(
            children: [
              Image.asset('test.jpg', width: 150),
              // margin, padding

              Container(
                child: Column(
                  children: [
                    Text('캐논', style: TextStyle( fontSize: 30) ),
                    Text('금호동 - 끌올 10분 전', style: TextStyle( fontSize: 10, color: Colors.grey) ),
                    Text('680,000원', style: TextStyle( fontWeight: FontWeight.bold ) ),
                    Icon(Icons.heart_broken)],
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
