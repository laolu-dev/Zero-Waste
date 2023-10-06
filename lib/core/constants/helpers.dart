import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

void showAppError(BuildContext context, String error) {
  AnimatedSnackBar.material(
    error,
    type: AnimatedSnackBarType.error,
    duration: const Duration(seconds: 4),
    snackBarStrategy: RemoveSnackBarStrategy(),
  ).show(context);
}


