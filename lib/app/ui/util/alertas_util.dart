import 'package:flutter/material.dart';

class Alertas {
  Future<T?> cargando<T>(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircularProgressIndicator(),
              Text("Loading"),
            ],
          ),
        );
      },
    );
  }

  void mostrarAlerta({
    required BuildContext context,
    required String mensaje,
    required bool tipoError,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensaje),
      backgroundColor: tipoError ? Colors.red : Colors.green,
    ));
  }
}
