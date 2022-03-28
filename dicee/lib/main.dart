import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 빌드 메소드 밖에서 변수를 선언하면 페이지 클래스에서 반영되지 않는다.
    var leftDiceNumber = 5;
    var rightDiceNumber = 3;

    return Center(
      child: Row(
        children: [
          Expanded(
            // 위젯의 크기를 핸드폰 화면에 맞게 확장해주는 위젯
            // flex property는 화면대비 비율이다.
            // flex property의 default값은 1이고, Expanded를 기준으로 비율을 잰다.
            child: FlatButton(
              // FlatButton 위젯은 단순한 버튼이다.
              // FlatButton 자체에 내부여백이 존재한다. (오른쪽과 왼쪽)
              // FlatButton은 Flutter2.0버전에서는 바뀌어서 쓰이지 않는다.
              child: Image.asset('images/dice$leftDiceNumber.png'),
              // 문자, 문자열을 표시할 때 ' ' 혹은 " " 을 사용한다. 따옴표 안에 $변수명을 사용하면 변수값을 출력할 수 있다.
              onPressed: () {
                // 버튼을 눌렀을 경우 해당 부분을 실행하게 된다.
                // onPressed 함수는 void callback 요구하는 함수이다.
                // void callback은 anonymouse function(익명 함수)를 요구한다.
                print('Left Button got Pressed');
                // print문은 문자, 문자열을 출력하는 역할을 하지만 Dart 외 다른 언어에서도 에러를 확인할 때  쓰인다.
              },
            ),
            // Image 위젯안에서 child를 둘 필요 없이 Image.asset, Image.network로 이미지를 넣을 수 있다. (코드 간결화)
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print('Right Button got pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
