import 'package:elementary/elementary.dart';
import 'package:flame/domain/error_handler.dart';
import 'package:flame/domain/profile_service.dart';
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
    return MultiProvider(
      providers: [
        Provider<ErrorHandler>(
          create: (context) => MainErrorHandler(),
        ),
        Provider(
          create: (context) => ProfileService(),
        ),
      ],
      child: app,
    );
  }
}
