import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:BoxDecoration(image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1693930270229-694fc4216a69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")
            ,fit: BoxFit.cover,
          )) ,
    )

    );
  }
}
