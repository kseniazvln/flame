import 'dart:io';

import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flame/data/dto/temp_user.dart';
import 'package:flame/data/repository/explore_repository.dart';
import 'package:flame/data/repository/user_repository.dart';
import 'package:flame/entity/explore.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

// TODO: cover with documentation
/// Default Elementary model for RegistrationPage module
class RegistrationPageModel extends ElementaryModel {
  RegistrationPageModel(
    ErrorHandler errorHandler,
    this.userRepository,
    this.exploreRepository,
  ) : super(errorHandler: errorHandler);

  final UserRepository userRepository;
  final ExploreRepository exploreRepository;

  Future<TempUser> getUser() async {
    return await userRepository.getUser() ??
        TempUser(
          id: FirebaseAuth.instance.currentUser?.uid ?? '',
          verified: false,
        );
  }

  Future<List<ExploreItem>> getExplore() async {
    return await exploreRepository.getItems() ?? [];
  }

  Future<String> pickFile() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      throw Exception('Cant load image');
    }

    final storageRef = FirebaseStorage.instance.ref();
    final uuid = const Uuid().v4();
    final mountainsRef = storageRef.child(uuid);
    File file = File(image.path);
    await mountainsRef.putFile(file);

    final s = await mountainsRef.getDownloadURL();

    return s;
  }

  Future<void> save(FlameUser flameUser) async {
    await userRepository.saveUser(flameUser);
  }
}
