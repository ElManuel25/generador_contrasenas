import 'package:flutter/material.dart';

class TextoGenerarContrasena extends StatelessWidget {
  const TextoGenerarContrasena({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Generar contraseña',
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0), fontSize: 25, fontWeight: FontWeight.w800),
    );
  }
}
