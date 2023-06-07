import 'package:elementary/elementary.dart';
import 'package:flame/data/dto/temp_user.dart';
import 'package:flame/entity/explore.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:flame/internal/logger.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart' hide Orientation;
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'registration_page_model.dart';
import 'registration_page_widget.dart';

abstract class IRegistrationPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<TempUser> get userState;

  EntityStateNotifier<List<ExploreItem>> get exploreState;

  EntityStateNotifier<List<String?>> get photoState;

  TextEditingController get nameController;

  TextEditingController get bioController;

  TextEditingController get birthdayController;

  ValueNotifier<(int, int)> get ageRangeState;

  void selectSex(String value);

  void selectSearch(String value);

  void selectOrientation(String value);

  void selectItem(String item);

  bool isSelected(ExploreItem e);

  void chosePhoto(int index);

  void saveProfile();
}

RegistrationPageWidgetModel defaultRegistrationPageWidgetModelFactory(
    BuildContext context) {
  return RegistrationPageWidgetModel(
    RegistrationPageModel(
      context.read(),
      context.read(),
      context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for RegistrationPageWidget
class RegistrationPageWidgetModel
    extends WidgetModel<RegistrationPageWidget, RegistrationPageModel>
    with ThemeProvider, SnackBarProvider
    implements IRegistrationPageWidgetModel {
  RegistrationPageWidgetModel(RegistrationPageModel model) : super(model);

  @override
  final nameController = TextEditingController();
  @override
  final birthdayController = MaskedTextController(mask: '00 / 00 / 0000');
  @override
  final userState = EntityStateNotifier();
  @override
  final exploreState = EntityStateNotifier();
  @override
  final photoState = EntityStateNotifier();
  @override
  final bioController = TextEditingController();
  @override
  final ageRangeState = ValueNotifier((18, 30));

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    photoState.content(List.generate(9, (index) => null));
    _init();
  }

  Future<void> _init() async {
    try {
      final user = await model.getUser();
      userState.content(user);
    } catch (e) {
      showSnackBar('Can`t get user');
    }

    try {
      exploreState.content(await model.getExplore());
    } catch (e) {
      exploreState.content([]);
    }
  }

  @override
  void dispose() {
    ageRangeState.dispose();
    bioController.dispose();
    nameController.dispose();
    birthdayController.dispose();
    exploreState.dispose();
    userState.dispose();
    super.dispose();
  }

  @override
  void selectOrientation(String value) {
    userState.content(
      userState.value!.data!.copyWith(
        orientation: Orientation.values.firstWhere((e) => e.name == value),
      ),
    );
  }

  @override
  void selectSearch(String value) {
    userState.content(
      userState.value!.data!.copyWith(
        search: Sex.values.firstWhere((e) => e.name == value),
      ),
    );
  }

  Future<void> saveUser() async {}

  @override
  void selectSex(String value) {
    userState.content(
      userState.value!.data!.copyWith(
        sex: Sex.values.firstWhere((e) => e.name == value),
      ),
    );
  }

  @override
  void selectItem(String item) {
    logger.wtf(item);
    final interests = List<String>.of(userState.value?.data?.interests ?? []);

    if (interests.contains(item)) {
      interests.remove(item);
    } else {
      interests.add(item);
    }

    logger.wtf(interests);

    userState.content(
      userState.value!.data!.copyWith(
        interests: interests,
      ),
    );
  }

  @override
  bool isSelected(ExploreItem item) {
    final user = userState.value?.data;

    return user?.interests?.any((e) => e == item.name) ?? false;
  }

  @override
  Future<void> chosePhoto(int index) async {
    final photo = photoState.value?.data ?? List.generate(9, (index) => null);
    final nextPhotos = List.of(photo);
    nextPhotos[index] = '';
    photoState.content(nextPhotos);
    try {
      final url = await model.pickFile();
      nextPhotos[index] = url;
      photoState.content(List.of(nextPhotos));
      userState.content(
        userState.value!.data!.copyWith(
          pictures: nextPhotos
              .whereType<String>()
              .where((s) => s.isNotEmpty)
              .toList(),
        ),
      );
    } catch (e) {
      showSnackBar('Can`t get user');
      photoState.content(photo);
    }
  }

  @override
  Future<void> saveProfile() async {
    final user = userState.value?.data;
    final name = nameController.text;
    final bio = bioController.text;
    final date = birthdayController.text;
    final pictures = user?.pictures ?? [];
    final (min, max) = ageRangeState.value;
    final photo = photoState.value?.data ?? List.generate(9, (index) => null);

    if(photo.where((p) => p != null && p.isNotEmpty).length > 2){
      showSnackBar('Upload at leasst 2 photo');
    }

    if (name.isNotEmpty &&
        date.isNotEmpty &&
        bio.isNotEmpty &&
        user?.sex != null &&
        user?.search != null &&
        user?.orientation != null &&
        pictures.isNotEmpty) {

      final birthday = DateFormat('d / M / yyyy').parse(date);
      final age = DateTime.now().difference(birthday);

      await model.save(
        FlameUser(
          id: user!.id,
          name: name,
          bio: bio,
          minAge: min,
          maxAge: max,
          age: age.inDays ~/ 365,
          birthday: birthday,
          sex: user.sex!,
          search: user.search!,
          orientation: user.orientation!,
          pictures: pictures,
          interests: user.interests!,
          verified: true,
        ),
      );

      router.replace(const HomeRoute());

      return;
    }

    showSnackBar('All fields required');
  }
}
