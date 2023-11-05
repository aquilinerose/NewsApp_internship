import 'package:flutter/material.dart';
import 'package:newsapp/desk_live.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: (BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1693812292404-77dcf305c571?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80"),
                fit: BoxFit.cover))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Welcome!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff0a0103))),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.blueGrey),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 66, 125, 145)),
                ),
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.blueGrey),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 66, 125, 145)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskLive(),
                    ));
              },
              child: Text("Submit", style: TextStyle(color: Color(0xff031e51))),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffa3bef3)),
            ),
            Text("Forgot Password",
                style: TextStyle(
                  color: Color(0xff1c91e1),
                  fontSize: 15,
                )),
            Text("Don't have an account? Sign_in",
                style: TextStyle(
                  fontSize: 15,
                )),
          ]),
        ),
      ),
    ));
  }
}
