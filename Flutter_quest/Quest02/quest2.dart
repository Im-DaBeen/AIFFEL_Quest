import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.add_star)
          // )
        ],
        title: Text('플러터로 앱 만들기'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
