import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/data/repository/chat_repository.dart';
import 'package:flame/data/repository/explore_repository.dart';
import 'package:flame/data/repository/like_repository.dart';
import 'package:flame/data/repository/message_repository.dart';
import 'package:flame/data/repository/user_repository.dart';
import 'package:flame/data/service/api_client.dart';
import 'package:flame/domain/error_handler.dart';
import 'package:flame/domain/photo_service.dart';
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
        ChangeNotifierProvider(
          create: (_) => ValueNotifier<ThemeMode>(ThemeMode.light),
        ),
        Provider<ErrorHandler>(
          create: (context) => MainErrorHandler(),
        ),
        Provider(
          create: (context) => LikeRepository(),
        ),
        Provider(
          create: (context) => UserRepository(),
        ),
        Provider(
          create: (context) => MessageRepository(),
        ),
        Provider(
          create: (context) => ChatRepository(),
        ),
        Provider(
          create: (context) => ExploreRepository(),
        ),
        Provider(
          create: (context) => PhotoService(
            apiService: ApiService(
              Dio(),
            ),
            exploreRepository: context.read(),
          ),
        ),
        Provider(
          create: (context) => ProfileService(
            context.read(),
          ),
        ),
      ],
      child: app,
    );
  }
}
