import 'dart:io';

import 'package:coordinates_list/Pages/homeWidgets/home_appBar.dart';
import 'package:coordinates_list/Pages/pag01.dart';
import 'package:flutter/material.dart';

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
      appBar: getHomeAppBar(),
      body: Container(
        child: const Center(
          child: Text('ola mundo!'),
        ),
      ),
    );
  }
}
