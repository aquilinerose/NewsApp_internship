import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nameList = ["ramu", "raju", "meena", "seema","suresh"];
  List<Color>color=[Colors.orange,Colors.lightGreenAccent,Colors.blueAccent,Colors.deepPurple,Colors.teal];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width/2,
          color: Colors.lightBlue,
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              height: 50,
              width: 100,
              color: color[index],
              child: Text(nameList[index])
            ),
            itemCount: color.length,
          )),
    );
  }
}
