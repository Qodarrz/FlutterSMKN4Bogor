import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome to $title!'),
      ),
    );
  }
}
