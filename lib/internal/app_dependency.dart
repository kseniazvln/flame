import 'package:elementary/elementary.dart';
import 'package:flame/domain/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({
    Key? key,
    required this.app,
  }) : super(key: key);

  final Widget app;

  @override
  Widget build(BuildContext context) {
    return Provider<ErrorHandler>(
      create: (context) => MainErrorHandler(),
      child: app,
    );
  }
}
