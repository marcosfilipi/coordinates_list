import 'package:coordinates_list/Pages/pag01.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('pagina de login'),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Filhote();
                  }));
                },
                child: Text('Teste'),
              ),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text("1.0.0"),
        title: Container(
          child: Center(
            child: Text("Coordinates List"),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('ola mundo!'),
        ),
      ),
    );
  }
}
