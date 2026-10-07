import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage ({super.key});

  @override 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (appBar : AppBar(title : Text("Blog")),
      backgroundColor: Color(0xFFFFFFFF),
      body:Column(children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Masukan Nama Anda",
            border: OutlineInputBorder(),
          )
          controller: inputNama,
          onSubmitted: (values) {
            inputNama.text = values;
          }
        ),
        ElevatedButton(
          child: Text("Tampilkan Nama"),
          onPressed: () {
            print(inputNama.text)
          }
        )
      ],
      ),
    );
  }
}