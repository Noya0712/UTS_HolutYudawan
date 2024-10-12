import 'package:flutter/material.dart';
import 'main.dart'; //untuk mengimport akses ke register

class LoginPage extends StatelessWidget {
  //untuk input email
  final TextEditingController emailController = TextEditingController();
  //untuk input password
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email Anda', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password Anda', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //tampilan popup selamat datang selama 200s
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    Future.delayed(Duration(milliseconds: 200), () {
                      // Tutup popup setelah 200s
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/profile');// Pindah ke profil
                    });
                    return AlertDialog(
                      content: Text('Selamat datang'),
                    );
                  },
                );
              },
              child: Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Belum punya akun ? Daftar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
