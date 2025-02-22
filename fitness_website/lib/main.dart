import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Black & White Theme
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers the button horizontally
          children: [
            const Text(
              "Welcome", // Placing the "Welcome" text above the button
              style: TextStyle(
                fontSize: 24, // You can change the font size if needed
                color: Colors.white, // Text color
              ),
            ),
            const SizedBox(height: 20), // Adds a small gap between "Welcome" and the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomePage screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black, // Text Color
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
