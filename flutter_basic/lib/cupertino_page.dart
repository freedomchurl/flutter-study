import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 UI'),
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton(
              child: Text('쿠퍼티노 버튼'),
              onPressed: () => print('onPressed')
          ),
          CupertinoSwitch(
            value: _switch,
            onChanged: (bool isTrue) {
              setState(() {
                print('onChanged : ' + '$isTrue');
                _switch = isTrue;
              });
            },
          ),
          RaisedButton(
              child: Text('머티리얼 버튼'),
              onPressed: () => print('onPressed Material')
          ),
          Switch(
            value: _switch,
            onChanged: (bool isTrue) {
              setState(() {
                print('onChanged : ' + '$isTrue');
                _switch = isTrue;
              });
            },
          )
        ],
      )
    );
  }
}
