import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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

          Padding(
            padding: EdgeInsets.all(16)
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