import 'package:flutter/material.dart';
import 'package:generador_contrasenas/pages/PasswordGeneratorPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Generador de contraseñas"),
          backgroundColor: Color.fromARGB(219, 195, 7, 7),
        ),
        body: PasswordGeneratorPage(),
      ),
    );
  }
}

