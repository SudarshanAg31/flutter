import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String appBarTitle="flutterapp";
  Color buttoncolor=Colors.white70;
  void updateState(){
    setState((){
                  appBarTitle="my profile";
                });
                print(appBarTitle);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter app", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 70,
                child: Icon(Icons.person, size: 90),
              ),
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
                          ElevatedButton(
              onPressed: updateState,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text("follow"),
            ),
            ],
          ),
        ),
    );
  }
}