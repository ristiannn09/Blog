import 'package:flutter/material.dart';

class LoginnPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
      ),

      backgroundColor: Color(0xFFFFFFFF),

      body: Column(
        children: [
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

          Padding(padding: EdgeInsets.all(16)
          ),
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}