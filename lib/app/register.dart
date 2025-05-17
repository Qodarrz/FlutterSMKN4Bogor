import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Aksi saat tombol ditekan
          },
          child: const Text('Register'),
        ),
      ),
    );
  }
}
