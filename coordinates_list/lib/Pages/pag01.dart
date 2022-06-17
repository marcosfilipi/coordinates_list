import 'package:coordinates_list/Pages/login.dart';
import 'package:flutter/material.dart';

class Filhote extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('pagina de 1'),
            TextFormField(
              decoration: InputDecoration(hintText: 'Digite seu email!'),
            ),
            Center(
              child: Container(
                height: 100,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return LoginPage();
                    }));
                  },
                  child: Text('Teste 1'),
                ),
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
