import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Theme.of(context).colorScheme.secondary,
    content: Text(
      message,
      style:
          Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
