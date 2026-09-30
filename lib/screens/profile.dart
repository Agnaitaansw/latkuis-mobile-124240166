import 'package:flutter/material.dart';

import 'package:latkuis/models/data.dart';
import 'package:latkuis/screens/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profile"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.deepPurple.shade100,
              child: const Icon(
                Icons.person,
                size: 30,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 15),

            // username
            const Text(
              "Username",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            Text(
              user1.username,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Logout
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}