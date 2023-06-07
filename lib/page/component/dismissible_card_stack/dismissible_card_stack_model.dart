import 'dart:async';
import 'dart:collection';

import 'package:elementary/elementary.dart';
import 'package:flame/data/repository/chat_repository.dart';
import 'package:flame/data/repository/like_repository.dart';
import 'package:flame/data/repository/user_repository.dart';
import 'package:flame/domain/profile_service.dart';
import 'package:flame/entity/chat.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:flame/entity/like.dart';
import 'package:flame/internal/logger.dart';
import 'package:flame/page/component/dismissible_card_stack/dissmiss_state.dart';

// TODO: cover with documentation
/// Default Elementary model for DismissibleCardStack module
class DismissibleCardStackModel extends ElementaryModel {
  DismissibleCardStackModel({
    super.errorHandler,
    required this.chatRepository,
    required this.userRepository,
    required this.profileService,
    required this.likeRepository,
  });

  final ChatRepository chatRepository;
  final LikeRepository likeRepository;
  final ProfileService profileService;
  final UserRepository userRepository;

  final Queue<FlameUser> _userBuffer = ListQueue();
  final Queue<FlameUser> _historyBuffer = ListQueue();
  final Set<String> _visited = {};

  Future<void> searchUsers() async {
    final user = await profileService.getUser();
    final list = await userRepository.getUsers(
      sex: user?.sex ?? Sex.hidden,
      search: user?.search ?? Sex.hidden,
      ageRange: (user?.minAge ?? 18, user?.maxAge ?? 30),
    );
    final newUsers = list.where((u) => !_visited.contains(u.id));
    _userBuffer.addAll(newUsers);
  }

  (FlameUser?, FlameUser?)? getLastUserPair() {
    if (_historyBuffer.length < 2) {
      return null;
    }

    final last = _historyBuffer.removeLast();
    _userBuffer.addFirst(last);
    final current = _historyBuffer.removeLast();

    return (current, last);
  }

  (FlameUser?, FlameUser?) getCurrentUserPair() {
    _userBuffer.removeWhere((u) => _visited.contains(u.id));

    if (_userBuffer.length < 5) {
      searchUsers();
    }

    if (_userBuffer.isEmpty) {
      return (null, null);
    }

    final current = _userBuffer.removeFirst();
    _visited.add(current.id);
    _historyBuffer.add(current);

    final candidate = (current, _userBuffer.firstOrNull);

    return candidate;
  }

  Future<bool> handleUpdate({
    required DismissibleState state,
    required FlameUser user,
  }) async {
    if (state == DismissibleState.like || state == DismissibleState.superLike) {
      return _handleLike(user, state == DismissibleState.superLike);
    }

    return false;
  }

  Future<bool> _handleLike(FlameUser user, [bool superLike = false]) async {
    final currentUser = await profileService.getUser();
    final like = Like(
      from: currentUser!.id,
      to: user.id,
      superLike: superLike,
    );
    await likeRepository.setLike(
      like,
    );

    final match = await likeRepository.findMatch(like);

    if (match) {
      final id = like.to.compareTo(like.from) > 0
          ? '${like.to}${like.from}'
          : '${like.from}${like.to}';

      await chatRepository.createChat(
        Chat(
          chatId: id,
          participant: [
            like.to,
            like.from,
          ],
        ),
      );
    }

    return match;
  }
}
