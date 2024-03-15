import 'dart:math';

import 'package:flutter/material.dart';
import 'package:generador_contrasenas/widgets/OpcionesContrasena.dart';

import 'contrasena_generada.dart';
import 'texto_generar_contrasena.dart';

class PasswordGeneratorForm extends StatefulWidget {
  @override
  _PasswordGeneratorFormState createState() => _PasswordGeneratorFormState();
}

class _PasswordGeneratorFormState extends State<PasswordGeneratorForm> {
  int _longitudContrasena = 8;
  bool _incluyeCaracteresEspeciales = false;
  bool _incluyeMayusculas = false;
  bool _incluyeNumeros = false;
  String _contrasenaGenerada = '';

  final List<String> _caracteresEspeciales = [
    '!', '@', '#', '\$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+'
  ];

  void _generarContrasena() {
    String caracteres = 'abcdefghijklmnopqrstuvwxyz';
    String contrasena = '';

    if (_incluyeMayusculas) {
      caracteres += caracteres.toUpperCase();
    }
    if (_incluyeNumeros) {
      caracteres += '0123456789';
    }
    if (_incluyeCaracteresEspeciales) {
      caracteres += _caracteresEspeciales.join('');
    }

    for (int i = 0; i < _longitudContrasena; i++) {
      contrasena += caracteres[Random().nextInt(caracteres.length)];
    }

    setState(() {
      _contrasenaGenerada = contrasena;
    });
  }

  void _establecerOpcionesContrasena(String? opcion) {
    if (opcion != null) {
      setState(() {
        _incluyeCaracteresEspeciales = opcion == 'Todos los caracteres';
        _incluyeMayusculas = _incluyeCaracteresEspeciales ||
            opcion == 'Fácil de leer' ||
            opcion == 'Fácil de decir' ||
            opcion == 'Todos los caracteres';
        _incluyeNumeros = opcion == 'Fácil de leer' || _incluyeCaracteresEspeciales;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Text('Longitud de la contraseña: $_longitudContrasena'),
            Slider(
              value: _longitudContrasena.toDouble(),
              min: 8,
              max: 20,
              divisions: 12,
              activeColor: Colors.red,
              thumbColor: const Color.fromARGB(255, 147, 10, 10),
              onChanged: (double valor) {
                setState(() {
                  _longitudContrasena = valor.toInt();
                });
              },
            ),
          ],
        ),
        const Text(
          'Opciones de contraseña:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        mostrarOpciones(),
        mostrarBotonGenerar(),
        ContrasenaGenerada(password: _contrasenaGenerada),
      ],
    );
  }

  ElevatedButton mostrarBotonGenerar() {
    return ElevatedButton(
      onPressed: _generarContrasena,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      child: TextoGenerarContrasena(),
    );
  }

  OpcionesContrasena mostrarOpciones() {
    return OpcionesContrasena(
      establecerOpcionesContrasena: _establecerOpcionesContrasena,
      incluirCaracteresEspeciales: _incluyeCaracteresEspeciales,
      incluirMayusculas: _incluyeMayusculas,
      incluirNumeros: _incluyeNumeros,
    );
  }
}
