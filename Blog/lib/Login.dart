import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Blog")),

      backgroundColor: Color(0xFFFFFFFF),

      body: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage("asset/yy.png"),
              width: 175,
              height: 175,
            ),
          ),
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(197, 220, 155, 155),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "Masukan Nama Anda",
                  border: OutlineInputBorder(),
                ),
                controller: inputNama,
                onSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(197, 220, 155, 155),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "Masukan Password Anda",
                  border: OutlineInputBorder(),
                ),
                controller: inputPassword,
                onSubmitted: (values) {
                  inputPassword.text = values;
                },
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputNama.text);
              print(inputPassword.text);
              //Navigator.pushNamed(context, "/home"),
              Navigator.pushReplacementNamed(context, "/home" );
            },
          ),
        ],
      ),
    );
  }
}
