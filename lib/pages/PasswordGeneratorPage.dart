import 'package:flutter/material.dart';
import 'package:generador_contrasenas/widgets/PasswordGeneratorForm.dart';


class PasswordGeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: PasswordGeneratorForm(),
      ),
    );
  }
}
