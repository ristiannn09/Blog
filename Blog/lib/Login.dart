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

      body: Column(
        children: [
          SizedBox(height: 100),

          TextField(
            controller: inputUsername,
            decoration: InputDecoration(
              hintText: "Masukkan Username",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            controller: inputPassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Masukkan Password",
              border: OutlineInputBorder(),
            ),
          ),

          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print("Tombol Login ditekan");
            },
          ),
        ],
      ),
    );
  }
}