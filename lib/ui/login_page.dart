import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Bina")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) =>
                    value!.isEmpty ? "Email harus diisi" : null,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? "Password harus diisi" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, '/produk');
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registrasi');
                },
                child: const Text("Belum punya akun? Registrasi"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
