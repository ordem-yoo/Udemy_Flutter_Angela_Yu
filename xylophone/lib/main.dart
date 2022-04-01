import 'package:flutter/material.dart';
// pub.dev
import 'package:audioplayers/audioplayers.dart';
// 패키지를 설치하고 사용할 경우 import를 통해 패키지를 명시해야지 코드를 쓸 수 있다.
//
// 패키지 설치
// 패키지 설치는 pub.dev에서 패키지 검색을 하고 설치한다.
// install을 누르면 설치방법이 나오며 pubspec.yaml에 직접 추가하거나,
// 터미널에서 flutter pub add ???? 으로 추가할 수 있다.
// pubspec.yaml에서 dependencies를 보면 버전 앞에 ^ 표시가 있다.
// ^표시는 사용 가능한 버전의 범주를 나타내며
// 예를 들어 ^0.20.1 버전이 있으면  0.20.1 <= 범위 < 1.0.0 의 범위를 가지는 것과 같다.

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // 코드 간략화를 위한 함수 제작
  void Key(int n) {
    final player = AudioCache();
    // package파일을 잘 읽어보도록 한다.
    player.play('note$n.wav');
    // pubspec.yaml에서 asset은 이미지, 텍스트, 오디오 파일에 대한 설정을 할 수 있다.
  }

  // 아래와 같이 위젯도 함수를 써서 반복되는 위젯의 코드를 축약할 수 있다.
  // 하지만 함수로 만들기 앞서 해야할 과정이 있다.
  // 1. 문장의 끝이 ;로 끝난다.
  // 2. 함수의 return typr에 void가 있으면 안된다.
  //    임의의 함수를 만든다고하면 return 값이 있는 함수를 만들 수 있고,
  //    return 값이 없는 함수를 만들수 있는데 return값이 없는 함수는 void를 사용해도 되지만
  //    return 값이 있는 경우 return값에 따라 type을 정해줘야한다.
  //    밑에 있는 함수도 return 값이 있기 때문에 type을 return값에 맞춰 type을 정해줘야 한다.
  Expanded XyloTile(int n) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          Key(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XyloTile(1),
              XyloTile(2),
              XyloTile(3),
              XyloTile(4),
              XyloTile(5),
              XyloTile(6),
              XyloTile(7),
            ],
          ),
        ),
      ),
    );
  }
}
