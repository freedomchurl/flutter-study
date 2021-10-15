import 'package:flutter/material.dart';
import 'package:instagram_clone/tab_page.dart';

// 이 페이지는 생성 후에, 상태를 변경하지 않고 login_page 혹은 tab_page로 넘기게 되므로 Stateless도 충분하다.
class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabPage();
  }
}
