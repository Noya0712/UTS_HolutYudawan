import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blue),
            Text(
              'Nama : Holut Yudawan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'NIM : 362358302014',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Email : holutyudawan@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'No Telpon : 082232341700',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Align(
              // Menempatkan button di tengah bawah
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Keluar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}