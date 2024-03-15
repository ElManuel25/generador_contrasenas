import 'package:flutter/material.dart';

class CheckboxesOpciones extends StatelessWidget {
  const CheckboxesOpciones({
    Key? key,
    required this.incluirCaracteresEspeciales,
    required this.incluirMayusculas,
    required this.incluirNumeros,
    required this.establecerOpcionesContrasena,
  }) : super(key: key);

  final bool incluirCaracteresEspeciales;
  final bool incluirMayusculas;
  final bool incluirNumeros;
  final Function(String?) establecerOpcionesContrasena;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        CheckboxListTile(
          title: const Text('Contiene mayúsculas'),
          activeColor: Colors.red,
          value: incluirMayusculas, // Actualiza el valor del checkbox
          onChanged: (bool? value) {
            establecerOpcionesContrasena(null);
          },
        ),
        CheckboxListTile(
          title: const Text('Contiene números'),
          activeColor: Colors.red,
          value: incluirNumeros,
          onChanged: (bool? value) {
            establecerOpcionesContrasena(null);
          },
        ),
        CheckboxListTile(
          title: const Text('Contiene caracteres especiales'),
          activeColor: Colors.red,
          value: incluirCaracteresEspeciales,
          onChanged: (bool? value) {
            establecerOpcionesContrasena(null);
          },
        ),
      ],
    );
  }
}
