import 'package:flutter/material.dart';

class ContrasenaGenerada extends StatelessWidget {
  const ContrasenaGenerada({
    super.key,
    required String password,
  }) : _password = password;

  final String _password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TituloContrasenaGenerada(),
        ContrasenaGeneradaText(password: _password),
      ],
    );
  }
}

class ContrasenaGeneradaText extends StatelessWidget {
  const ContrasenaGeneradaText({
    super.key,
    required String password,
  }) : _password = password;

  final String _password;

  @override
  Widget build(BuildContext context) {
    return Text(
      _password,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.red,
      ),
    );
  }
}

class TituloContrasenaGenerada extends StatelessWidget {
  const TituloContrasenaGenerada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Contraseña generada:',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
