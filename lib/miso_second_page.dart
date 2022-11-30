import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'values.dart';

class MisoSecondPage extends StatelessWidget {
  const MisoSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Text(
                      "예약내역",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 64),
                    Row(
                      children: [
                        Icon(
                          Icons.error,
                          color: misoPrimaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          // 기기의 폭과 관계없이 텍스트 한 줄로 출력
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "예약된 서비스가 아직 없어요. 지금 예약해보세요!",
                              style: TextStyle(fontSize: 100),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(color: Colors.grey)
                  ],
                ),
              ),
              Positioned(
                bottom: 25,
                left: 24,
                right: 24,
                child: GestureDetector(
                  onTap: () {
                    print("예약하기 clicked");
                  },
                  child: Container(
                    color: misoPrimaryColor,
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    child: Text(
                      "예약하기",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
