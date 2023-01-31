import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // Text('Este es el contenido'),
                // SizedBox( height: 20),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Cupertino'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // Text('Este es el contenido'),
                // SizedBox( height: 20),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar',
                      style: TextStyle(color: Colors.white))
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child:
                    const Text('Aceptar', style: TextStyle(color: Colors.red)),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert')),
      body: Center(
          child: ElevatedButton(
        // onPressed: () => displayDialogAndroid(context),
        onPressed: () => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context),
        child: const Text('Mostrar alerta'),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
