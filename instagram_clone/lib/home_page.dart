import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget? _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      // 스크롤을 항상 아예 넣는게 낫다. - 반응형을 생각해서
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Instagram에 오신 것을 환영합니다',
                  style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우하세요.'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(8.0)),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://img9.yna.co.kr/photo/yna/YH/2021/03/04/PYH2021030403860000500_P4.jpg'), // chrome에서는 오류, 에뮬레이터 체크 필요
                            )
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('이메일 주소', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('이름'),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network('https://img9.yna.co.kr/photo/yna/YH/2021/03/04/PYH2021030403860000500_P4.jpg', fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(3.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network('https://img9.yna.co.kr/photo/yna/YH/2021/03/04/PYH2021030403860000500_P4.jpg', fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(3.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network('https://img9.yna.co.kr/photo/yna/YH/2021/03/04/PYH2021030403860000500_P4.jpg', fit: BoxFit.cover),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(5.0)),
                          RaisedButton(
                            child : Text('팔로우'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () => {print('follow')}
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                        ],
                      )
                    ),
                  )
                ],
              )
            )
          )
      )
    );
  }
}
