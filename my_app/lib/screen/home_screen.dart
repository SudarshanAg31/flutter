import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder(
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter app", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(radius: 70, child: Icon(Icons.person, size: 90)),
            const SizedBox(height: 8),
            const Text(
              "Sudarshan Agrawal",
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(0, 207, 74, 16),
              ),
            ),
            const Text(
              "Flutter Application",
              style: TextStyle(color: Color.fromARGB(255, 219, 23, 20)),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
