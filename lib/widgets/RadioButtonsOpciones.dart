import 'package:flutter/material.dart';

class RadioButtonsOpciones extends StatelessWidget {
  final String? opcionSeleccionada;
  final Function(String?) onChanged;

  const RadioButtonsOpciones({super.key, 
    required this.opcionSeleccionada,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text('Fácil de decir'),
          value: 'Fácil de decir',
          activeColor: Colors.red,
          groupValue: opcionSeleccionada,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: const Text('Fácil de leer'),
          value: 'Fácil de leer',
          activeColor: Colors.red,
          groupValue: opcionSeleccionada,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: const Text('Todos los caracteres'),
          value: 'Todos los caracteres',
          activeColor: Colors.red,
          groupValue: opcionSeleccionada,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
