import 'package:flutter/material.dart';

class Container_widg extends StatelessWidget {
  const Container_widg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height:100,
        width: 200,
        constraints: Container(
          color: Colors.blue,
          height: 100,
          width: 10
        ),
        // margin: EdgeInsets.all(20),//all from all side
        margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
        // color: const Color.fromARGB(255, 230, 23, 92),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 152, 116, 235),
          border: Border.all(width: 5,color:Color.fromRGBO(227, 139, 168, 1))
        ),
        alignment: Alignment.center,
        child:Text("hello")
      )
    );
  }
}
