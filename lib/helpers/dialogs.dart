import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

infoDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      //debugPrint("cerrar");
                      Navigator.pop(context);
                    },
                    child: const Text("cerrar"))
              ]);
        });
  } else {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                TextButton(
                    onPressed: () {
                      //debugPrint("cerrar");
                      Navigator.pop(context);
                    },
                    child: const Text("cerrar"))
              ]);
        });
  }
}
