import 'package:flutter/material.dart';

showSnackBar(
    {required BuildContext context,
    required String error,
    bool isError = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(error),
    backgroundColor: isError ? Colors.red : Colors.blue
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
