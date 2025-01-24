# 🥕 당근 마켓 디자인 코드

Dart 언어로 작성된 Flutter 프로젝트 파일입니다.

당근 마켓의 레이아웃과 앱바의 카피본입니다.

- IconButton의 padding을 없애고 추가적인 텍스트 크기와 위치만 추가적으로 조정이 필요합니다.
  

## 📱 Layout and Appbar ios build screen

<img src="https://github.com/user-attachments/assets/402d3f52-228d-460c-b622-0355bf2f205b"  width="30%" height="30%"/>

## 📖 Layout Base

<img src="https://github.com/user-attachments/assets/103ad4d8-ec92-42ea-bd3d-ce786134fc19" width="30%" height="30%"/>



 - study.dart 파일에는 기본적인 레이아웃 틀이 저장되어 있습니다. 아래는 study.dart 파일의 코드입니다.



```
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
            title: Text('당근'),
          ),
          body: Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset('assets/images/test.jpg', width: 150),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('역곡동'),
                      Text('10분 전'),
                      Text('60원'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text('2')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

```
