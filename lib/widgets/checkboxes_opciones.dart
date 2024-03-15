import 'package:flutter/material.dart';
import 'package:generador_contrasenas/widgets/OpcionesContrasena.dart';

class CheckboxesOpciones extends StatelessWidget {
  const CheckboxesOpciones({
    super.key,
    required this.widget,
  });

  final OpcionesContrasena widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: Text('Contiene caracteres especiales'),
          activeColor: Colors.red,
          value: widget.incluirCaracteresEspeciales,
          onChanged: (bool? value) {
            widget.establecerOpcionesContrasena(null);
          },
        ),
        CheckboxListTile(
          title: Text('Contiene mayúsculas'),
          activeColor: Colors.red,
          value: widget.incluirMayusculas, // Actualiza el valor del checkbox
          onChanged: (bool? value) {
            widget.establecerOpcionesContrasena(null);
          },
        ),
        CheckboxListTile(
          title: Text('Contiene números'),
          activeColor: Colors.red,
          value: widget.incluirNumeros,
          onChanged: (bool? value) {
            widget.establecerOpcionesContrasena(null);
          },
        ),
      ],
    );
  }
}
