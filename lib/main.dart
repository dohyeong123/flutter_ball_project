import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return (runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: Center(
        child: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      backgroundColor: Colors.indigoAccent,
    ),
    body: AskMe(),
  ))));
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  var number = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          number = Random().nextInt(5) + 1;
          print('click : $number');
        });
      },
      child: (Container(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('images/ball$number.png'),
        ),
      )),
    );
  }
}
