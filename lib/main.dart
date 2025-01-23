import 'package:flutter/foundation.dart' show kIsWeb;
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
          titleSpacing: 20.0, // title spacing 간격 조절
          title: Text(
            '역곡1동',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)), // appbar action iconbutton padding 값
            IconButton(icon: Icon(Icons.search_rounded), onPressed: () {}),
            IconButton(icon: Icon(Icons.list), onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications), onPressed: () {})
          ],
        ),
        body: Container(
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(2), // margin padding
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 1),
              bottom: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 120, // 이미지 너비 고정
                height: 120, // 이미지 높이 고정
                child: Image.asset('assets/images/test.jpg'),
              ),
              SizedBox(width: 15), // 이미지와 텍스트 사이 간격 추가
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              '장하다 (말 안들어서 교육 시켜줄 사람 찾습니다)',
                              style: TextStyle(fontSize: 14),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_pin, color: Colors.grey, size: 20),
                          Text('3.6km · ',
                              style: TextStyle(fontSize: 12, color: Colors.grey)),
                          Text('부천시 역곡동 · ',
                              style: TextStyle(fontSize: 12, color: Colors.grey)),
                          Text('2시간 전',
                              style: TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                      child: Text(
                        '1,680,000원',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(), // 남은 공간 차지하여 아이콘과 텍스트를 오른쪽 끝으로 밀어냄
                        IconButton(
                          icon: Icon(Icons.chat),
                          onPressed: () {},
                          color: Colors.grey,
                        ),
                        Text('2',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 15)),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () {},
                          color: Colors.grey,
                        ),
                        Text('3',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 15)),
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
