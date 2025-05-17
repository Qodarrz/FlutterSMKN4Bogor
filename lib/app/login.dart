import 'package:flutter/material.dart';
import 'home.dart'; // Pastikan path ini benar
import 'register.dart'; // Pastikan path ini benar
import 'forgot.dart'; // Pastikan path ini benar
import 'package:flutter/gestures.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar logo kiri atas
          Positioned(
            top: 16.0,
            left: 16.0,
            child: Image.asset(
              'assets/alamak.png', // Path ke logo kiri
              width: 100.0,
              height: 43.0,
            ),
          ),
          // Gambar logo kanan atas
          Positioned(
            top: 15.0,
            right: 16.0,
            child: Image.asset(
              'assets/study4.png', // Path ke logo kanan
              width: 93.0,
              height: 64.0,
            ),
          ),
          // Konten utama login
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    'assets/bro.png',
                    height: 240.0,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16.0),
                _buildTextField('Email', Icons.email),
                const SizedBox(height: 16.0),
                _buildTextField('Password', Icons.lock, obscureText: true),
                const SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: 'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Satoshi', // Menggunakan font Satoshi
                        color: Color(0xFF8178EC),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage(),
                            ),
                          );
                        },
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                // Tombol Login
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage('Home'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8178EC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Satoshi', // Menggunakan font Satoshi
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                // RichText untuk teks dengan warna berbeda
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Belum Punya Akun Sebelumnya? ',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Satoshi', // Menggunakan font Satoshi
                      ),
                      children: [
                        TextSpan(
                          text: 'Daftar di sini!',
                          style: const TextStyle(
                            color: Color(0xFF8178EC),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Satoshi', // Menggunakan font Satoshi
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun TextField (Email/Password)
  Widget _buildTextField(String label, IconData icon, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: 'Satoshi', // Menggunakan font Satoshi
          ),
        ),
        const SizedBox(height: 8.0), // Jarak antara teks dan TextField
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            suffixIcon: Icon(
              icon,
              color: const Color(0xFF8178EC),
            ),
          ),
        ),
      ],
    );
  }
}
