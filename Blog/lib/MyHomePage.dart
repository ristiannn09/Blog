import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),

      backgroundColor: Color(0xFFFFFFFF),

      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(197, 220, 155, 155),

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan Username",
                      border: OutlineInputBorder(),
                    ),
                    controller: inputUsername,
                    onSubmitted: (values) {
                      inputUsername.text = values;
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.all(8),
                  ),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Masukan Password",
                      border: OutlineInputBorder(),
                    ),
                    controller: inputPassword,
                    onSubmitted: (values) {
                      inputPassword.text = values;
                    },
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
          ),

          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputUsername.text);
              print(inputPassword.text);
            },
          ),
        ],
      ),
    );
  }
}