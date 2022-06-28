// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterUserScreen extends StatefulWidget {
  const RegisterUserScreen({Key? key}) : super(key: key);

  @override
  State<RegisterUserScreen> createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0A6D92),
        title: const Text('Cadastro de Usuário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            const Text(
              "Preencha os campos abaixo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CustomTextFild(
              label: "Nome",
              icon: Icons.person,
            ),
            SizedBox(height: 15),
            CustomTextFild(label: "Senha", icon: Icons.password),
            SizedBox(height: 15),
            CustomTextFild(
              label: "Email",
              icon: Icons.email,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text("Enviar"),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFild extends StatelessWidget {
  final String label;
  final IconData? icon;

  const CustomTextFild({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        labelText: label,
        prefixIcon: icon == null ? null : Icon(icon),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Preencha os campos ';
        }

        return null;
      },
    );
  }
}
