import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController inputNama = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  // Memastikan controller di-dispose untuk mencegah memory leak
  @override
  void dispose() {
    inputNama.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Bengkel")),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          const Center(
            child: Image(
              image: AssetImage('asset/image/girr.png'),
              width: 175,
              height: 175,
            ),
          ),

          Center(
            child: Container(
              width: 300,
              color: const Color.fromARGB(197, 220, 155, 155),
              child: TextField(
                controller: inputNama,
                decoration: const InputDecoration(
                  hintText: "Masukan Nama Anda",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: Container(
              width: 300,
              color: const Color.fromARGB(197, 220, 155, 155),
              child: TextField(
                controller: inputPassword,
                obscureText: true, // Menyembunyikan teks password
                decoration: const InputDecoration(
                  hintText: "Masukan Password Anda",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          ElevatedButton(
            child: const Text("Login"),
            onPressed: () {
              String nama = inputNama.text;
              String password = inputPassword.text;

              // Logika pengecekan login
              if (nama == "admin" && password == "12345") {
                // Jika benar, navigasi ke halaman home
                Navigator.pushReplacementNamed(context, "/home");
              } else {
                // Jika salah, tampilkan SnackBar pemberitahuan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Nama atau Password salah!"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}