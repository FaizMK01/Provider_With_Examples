import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/PostProvider.dart';
import 'LoginApiTokenPage.dart';

class LoginApiPage extends StatelessWidget {
  const LoginApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Login Api Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Consumer<PostProvider>(builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: "Enter Email"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: "Enter Password"),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () async {
                      final response = await value.postDataWithOutMode(context,
                          emailController.text, passwordController.text);

                      if (response != null && response.containsKey('token')) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginApiTokenPage(
                              token: response['token'],
                            ),
                          ),
                        );
                        emailController.clear();
                        passwordController.clear();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Login"),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
