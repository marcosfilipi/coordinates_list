import 'package:coordinates_list/Pages/homeWidgets/home_appBar.dart';
import 'package:coordinates_list/Pages/homeWidgets/home_drawer.dart';
import 'package:coordinates_list/Pages/pag01.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'cadastro_usuario.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('pagina de login'),
          Center(
            child: Container(
              height: 100,
              width: 300,
              color: Colors.amber,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Filhote();
                  }));
                },
                child: const Text('Teste'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 240, 250),
      appBar: getHomeAppBar(),
      drawer: getHomeDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 40,
              child: SignInButton(
                elevation: 3,
                text: "Entrar com FaceBook",
                Buttons.FacebookNew,
                onPressed: () {
                  print("Funcionou");
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              height: 40,
              child: SignInButton(
                elevation: 3,
                text: "Entrar com Google",
                Buttons.Google,
                onPressed: () {
                  print("Funcionou");
                },
              ),
            ),
          ),
          SignInButtonBuilder(
            text: '  Criar nova conta ',
            icon: Icons.perm_identity_outlined,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                return const RegisterUserScreen();
              }));
            },
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
