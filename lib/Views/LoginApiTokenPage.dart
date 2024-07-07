import 'package:flutter/material.dart';

class LoginApiTokenPage extends StatelessWidget {
  final String token;

  const LoginApiTokenPage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Token: $token",
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
    );
  }
}
