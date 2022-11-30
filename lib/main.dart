import 'package:flutter/material.dart';

import 'miso.dart';
import 'starbucks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppListPage(),
    );
  }
}

class AppListPage extends StatelessWidget {
  const AppListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                "1. Miso",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Miso()),
              ),
            ),
            ListTile(
              title: const Text(
                "2. Starbucks",
                style: TextStyle(fontSize: 24),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Starbucks()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
