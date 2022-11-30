import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MisoFourthPage extends StatelessWidget {
  const MisoFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 62,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "나의 정보",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            Text(
              "010-1234-5678",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            ListTile(
              onTap: () => print("주소 관리 clicked"),
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              title: Text(
                "주소 관리",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () => print("결제 수단 관리 clicked"),
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.credit_card_outlined,
                color: Colors.black,
              ),
              title: Text(
                "결제 수단 관리",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () => print("공지사항 clicked"),
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.volume_up_outlined,
                color: Colors.black,
              ),
              title: Text(
                "공지사항",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              onTap: () => print("문의사항 clicked"),
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              title: Text(
                "문의사항",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
