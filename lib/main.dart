import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 20.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('역곡1동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Icon(Icons.expand_more, size: 30),
            ],
          ),
          actions: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
            IconButton(icon: Icon(Icons.menu, size: 30), onPressed: () {}),
            IconButton(icon: Icon(Icons.search_rounded, size: 30), onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications_none, size: 30), onPressed: () {})
          ],
        ),
        body: Container(
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[300]!, width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 120, // 이미지 너비 고정
                  height: 120, // 이미지 높이 고정
                  child: Image.asset('assets/images/test.jpg'), // 경로에 맞는 이미지로 변경
                ),
              ),
              SizedBox(width: 15), // 이미지와 텍스트 사이 간격 추가
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center, // 텍스트 내용을 수직 중앙에 위치
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              '장하다 (말 안들어서 교육 시켜줄 사람 찾습니다)',
                              style: TextStyle(fontSize: 16),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_pin, color: Colors.grey, size: 20),
                        Text('3.6km · ', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Text('부천시 역곡동 · ', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Text('2시간 전', style: TextStyle(fontSize: 12, color: Colors.grey))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 7, 0, 7),
                      child: Text('680,000원', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Spacer(), // 남은 공간 차지하여 아이콘과 텍스트를 오른쪽 끝으로 밀어냄
                        IconButton(icon: Icon(Icons.chat, size: 15), onPressed: () {}, color: Colors.grey),
                        Text('2', textAlign: TextAlign.end, style: TextStyle(fontSize: 15)),
                        IconButton(icon: Icon(Icons.favorite, size: 15), onPressed: () {}, color: Colors.grey),
                        Text('3', textAlign: TextAlign.end, style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
