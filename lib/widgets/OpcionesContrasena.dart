import 'package:flutter/material.dart';
import 'package:generador_contrasenas/widgets/CheckboxesOpciones.dart';
import 'package:generador_contrasenas/widgets/RadioButtonsOpciones.dart';

class OpcionesContrasena extends StatefulWidget {
  final Function(String?) establecerOpcionesContrasena;
  final bool incluirCaracteresEspeciales;
  final bool incluirMayusculas;
  final bool incluirNumeros;

  const OpcionesContrasena({
    required this.establecerOpcionesContrasena,
    required this.incluirCaracteresEspeciales,
    required this.incluirMayusculas,
    required this.incluirNumeros,
  });

  @override
  _EstadoOpcionesContrasena createState() => _EstadoOpcionesContrasena();
}

class _EstadoOpcionesContrasena extends State<OpcionesContrasena> {
  String? _opcionSeleccionada;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioButtonsOpciones(
          opcionSeleccionada: _opcionSeleccionada,
          onChanged: (value) {
            setState(() {
              _opcionSeleccionada = value;
            });
            widget.establecerOpcionesContrasena(value);
          },
        ),
        CheckboxesOpciones(
          incluirCaracteresEspeciales: widget.incluirCaracteresEspeciales,
          incluirMayusculas: widget.incluirMayusculas,
          incluirNumeros: widget.incluirNumeros,
          establecerOpcionesContrasena: widget.establecerOpcionesContrasena,
        ),
      ],
    );
  }
}
