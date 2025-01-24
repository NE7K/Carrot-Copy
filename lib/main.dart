import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 20.0, // 왼쪽으로부터 타이틀까지의 거리
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('역곡1동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Icon(Icons.expand_more, size: 30),
            ],
          ),
          actions: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)), // 수평 간격 8
            IconButton(icon: Icon(Icons.menu, size: 30), onPressed: () {}),
            IconButton(icon: Icon(Icons.search_rounded, size: 30), onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications_none, size: 30), onPressed: () {})
          ],
        ),
        body: Container(
          height: 200,
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0), // 왼, 오만 적용
          padding: EdgeInsets.symmetric(horizontal: 10), // 10으로도 충분
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[300]!, width: 1), // 더 연한 회색
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // 사진 라운딩 처리
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
                    SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '장하다',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                              softWrap: true,
                              overflow: TextOverflow.visible, // softWrap, overflow 둘 다 줄 바꿈하기 위해서
                            ),
                          ),
                          IconButton(icon: Icon(Icons.more_vert, color: Colors.grey[500]!), onPressed: () {} ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_pin, color: Colors.grey, size: 15),
                        Text('3.6km · ', style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Text('역곡동 · ', style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Text('2시간 전', style: TextStyle(fontSize: 14, color: Colors.grey))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 2, 0, 5),
                      child: Text('680,000원', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Spacer(), // 남은 공간 차지하여 아이콘과 텍스트를 오른쪽 끝으로 밀어냄
                        IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: Icon(Icons.chat, size: 15, color: Colors.grey[500]!), onPressed: () {}, color: Colors.grey),
                        Text('2', style: TextStyle(fontSize: 15)),
                        IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: Icon(Icons.favorite, size: 15, color: Colors.grey[500]!), onPressed: () {}, color: Colors.grey),
                        Text('3', style: TextStyle(fontSize: 15)),

                        // padding: EdgeInsets.zero, constraints: BoxConstraints(), 이건 iconbutton padding 간격을 줄이기 위해서 사용
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
