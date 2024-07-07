import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Provider Examples",
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/CounterPage");
              },
              leading: const Icon(
                Icons.star,
              ),
              title: const Text(
                "Counter",
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              iconColor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/SliderPage");
              },
              leading: const Icon(
                Icons.star,
              ),
              title: const Text(
                "Slider",
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              iconColor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/ThemePage");
              },
              leading: const Icon(
                Icons.star,
              ),
              title: const Text(
                "Theme Change",
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              iconColor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/GetPage");
              },
              leading: const Icon(
                Icons.star,
              ),
              title: const Text(
                "Get Api Using Provider",
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              iconColor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/LoginApiPage");
              },
              leading: const Icon(
                Icons.star,
              ),
              title: const Text(
                "Login Api Using Provider",
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              iconColor: Colors.blueGrey,
            ),
           
          ],
        ),
      ),
    );
  }
}
