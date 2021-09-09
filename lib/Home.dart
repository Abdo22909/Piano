import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(children: [
            Row(
              children: [
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.deepPurple,
                    char: 'C',
                    node: 'DO',
                    num: '1',
                    onTap: ()=> AudioCache().play('piano1.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.indigo,
                    char: 'D',
                    node: 'RE',
                    num: '2',
                    onTap: () => AudioCache().play('piano2.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.blue,
                    char: 'E',
                    node: 'MI',
                    num: '3',
                    onTap: () => AudioCache().play('piano3.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.teal,
                    char: 'F',
                    node: 'FA',
                    num: '4',
                    onTap: () => AudioCache().play('piano4.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.green,
                    char: 'G',
                    node: 'SOL',
                    num: '5',
                    onTap: () => AudioCache().play('piano5.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.greenAccent,
                    char: 'A',
                    node: 'LA',
                    num: '6',
                    onTap: () => AudioCache().play('piano6.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.amber,
                    char: 'B',
                    node: 'SI',
                    num: '7',
                    onTap: () => AudioCache().play('piano7.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.deepOrange,
                    char: 'C',
                    node: 'DO',
                    num: '8',
                    onTap: () => AudioCache().play('do.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.brown,
                    char: 'D',
                    node: 'RE',
                    num: '9',
                    onTap: () => AudioCache().play('do2.wav')),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.pink,
                    char: 'E',
                    node: 'MI',
                    num: '10',
                    onTap: () => AudioCache().play('fa.wav')),
              ],
            ),
            Positioned(
                left: sizeWidth * 0.075,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.45,
                child: buildSampleContainer(
                    color: Colors.deepPurple.shade900,
                    num: 'C#',
                    node: 'DO#',
                    char: '1#',
                    onTap: () => AudioCache().play('la.wav')),
            ),
            Positioned(
                left: sizeWidth * 0.175,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.indigo.shade900,
                    num: 'D#',
                    node: 'RE#',
                    char: '2#',
                    onTap: () => AudioCache().play('mi.wav')),
            ),
            Positioned(
                left: sizeWidth * 0.375,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.teal.shade900,
                    num: 'F#',
                    node: 'FA#',
                    char: '4#',
                    onTap: () => AudioCache().play('re.wav')),
            ),
            Positioned(
                right: sizeWidth * 0.475,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.green.shade900,
                    num: 'G#',
                    node: 'SOL#',
                    char: '5#',
                    onTap: () => AudioCache().play('si.wav')),
            ),
            Positioned(
                right: sizeWidth * 0.375,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.lightGreen.shade700,
                    num: 'A#',
                    node: 'LA#',
                    char: '6#',
                    onTap: () => AudioCache().play('sol.wav')),
            ),
            Positioned(
                right: sizeWidth * 0.175,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.deepOrange.shade900,
                    num: 'C#',
                    node: 'DO#',
                    char: '8#',
                    onTap: () => AudioCache().play('piano2.wav')),
            ),
            Positioned(
                right:  sizeWidth * 0.075,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.pink.shade900,
                    num: 'D#',
                    node: 'RE#',
                    char: '9#',
                    onTap: () => AudioCache().play('piano3.wav')),
            ),
          ]),
        ));
  }

  Widget buildSampleContainer({
    required String char,
    required String node,
    required String num,
    required Color color,
    required GestureTapCallback onTap,
    // required Color color,
    // required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.all(0.9),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.white, width: 2),
                bottom: BorderSide(color: Colors.white, width: 2),
                right: BorderSide(color: Colors.white, width: 2)),
            color: color,
          ),
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(char),
                SizedBox(
                  height: 10,
                ),
                Text(node),
                SizedBox(
                  height: 10,
                ),
                Text(num),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer({
    required String char,
    required String node,
    required String num,
    double? sizeHeight,
    double? sizeWidth,
    required Color color,
    required GestureTapCallback onTap,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0.8),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                border: Border.all(color: Colors.black, width: 3)),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white, fontSize: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(char),
                  SizedBox(
                    height: 15,
                  ),
                  Text(node),
                  SizedBox(
                    height: 15,
                  ),
                  Text(num),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            width: sizeWidth,
            height: sizeHeight,
          ),
        ),
      ),
    );
  }
}
