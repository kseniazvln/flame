import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/entity/explore.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:flame/page/component/theme_switch.dart';
import 'package:flutter/material.dart' hide Orientation;
import 'package:flutter/services.dart';
import 'registration_page_wm.dart';

// TODO: cover with documentation
/// Main widget for RegistrationPage module
@RoutePage()
class RegistrationPageWidget
    extends ElementaryWidget<IRegistrationPageWidgetModel> {
  const RegistrationPageWidget({
    this.isProfile = true,
    Key? key,
    WidgetModelFactory wmFactory = defaultRegistrationPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final bool isProfile;

  @override
  Widget build(IRegistrationPageWidgetModel wm) {
    return Scaffold(
      body: SafeArea(
        child: EntityStateNotifierBuilder(
          listenableEntityState: wm.userState,
          builder: (context, data) {
            if (data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        if (isProfile)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                wm.localizations.name,
                                style: wm.textTheme.displayMedium?.copyWith(
                                  color: wm.colorScheme.onBackground,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const ThemeSwitch(),
                            ],
                          )
                        else
                          Text(
                            wm.localizations.name,
                            style: wm.textTheme.displayMedium?.copyWith(
                              color: wm.colorScheme.onBackground,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        TextField(
                          controller: wm.nameController,
                          style: wm.textTheme.bodyLarge?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            hintText: wm.localizations.nameHint,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(100),
                          ],
                          keyboardType: TextInputType.name,
                        ),
                        Text(
                          wm.localizations.aboutName,
                          style: wm.textTheme.bodyMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.bio,
                          maxLines: null,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextField(
                          controller: wm.bioController,
                          style: wm.textTheme.bodyLarge?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintText: wm.localizations.bioHint,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(300),
                          ],
                          keyboardType: TextInputType.multiline,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.birthday,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextField(
                          controller: wm.birthdayController,
                          style: wm.textTheme.bodyLarge?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            hintText: wm.localizations.birthdayHint,
                          ),
                          keyboardType: TextInputType.datetime,
                        ),
                        Text(
                          wm.localizations.aboutBirthday,
                          style: wm.textTheme.bodyMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.ageRange,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: wm.ageRangeState,
                          builder: (context, value, _) {
                            final (min, max) = value;

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    min.toString(),
                                    textAlign: TextAlign.center,
                                    style: wm.textTheme.bodyMedium?.copyWith(
                                      color: wm.colorScheme.onBackground,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: RangeSlider(
                                    min: 18.0,
                                    max: 100.0,
                                    values: RangeValues(
                                      min.toDouble(),
                                      max.toDouble(),
                                    ),
                                    onChanged: (r) => wm.ageRangeState.value = (
                                      r.start.round(),
                                      r.end.round(),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    max.toString(),
                                    textAlign: TextAlign.center,
                                    style: wm.textTheme.bodyMedium?.copyWith(
                                      color: wm.colorScheme.onBackground,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.mySex,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CheckBoxGroup(
                          values: Sex.values.map((e) => e.name).toList(),
                          selected: data.sex?.name,
                          onTap: wm.selectSex,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.mySearch,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CheckBoxGroup(
                          values: Sex.values.map((e) => e.name).toList(),
                          selected: data.search?.name,
                          onTap: wm.selectSearch,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wm.localizations.myOrientation,
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CheckBoxGroup(
                          values:
                              Orientation.values.map((e) => e.name).toList(),
                          selected: data.orientation?.name,
                          onTap: wm.selectOrientation,
                        ),
                        Text(
                          'Interests',
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        EntityStateNotifierBuilder(
                          listenableEntityState: wm.exploreState,
                          builder: (context, explore) {
                            final exploreList = explore ?? [];

                            if (exploreList.isEmpty) {
                              return const SizedBox.shrink();
                            }

                            return SizedBox(
                              height: 200,
                              child: Wrap(
                                runSpacing: 2,
                                spacing: 5,
                                children: exploreList
                                    .map(
                                      (e) => _ExploreChip(
                                        wm: wm,
                                        item: e,
                                      ),
                                    )
                                    .toList(),
                              ),
                            );
                          },
                        ),
                        Text(
                          'Photos',
                          style: wm.textTheme.displayMedium?.copyWith(
                            color: wm.colorScheme.onBackground,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.photoState,
                    builder: (context, data) {
                      final photos = data ?? [];
                      return SliverPadding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        sliver: SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final photo = photos[index];

                              Widget child;
                              if (photo == null) {
                                child = const Icon(Icons.add);
                              } else if (photo.isEmpty) {
                                child = const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                child = CachedNetworkImage(
                                  imageUrl: photo,
                                  fit: BoxFit.fill,
                                );
                              }
                              return GestureDetector(
                                onTap: () => wm.chosePhoto(index),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: wm.colorScheme.primary,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: child,
                                ),
                              );
                            },
                            childCount: photos.length,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 3 / 4,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                        ),
                      );
                    },
                  ),
                  SliverToBoxAdapter(
                    child: FilledButton(
                      onPressed: wm.saveProfile,
                      child: Text(
                        isProfile ? 'Save' : 'Register',
                      ),
                    ),
                  ),
                  if (isProfile)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: OutlinedButton(
                          onPressed: wm.logout,
                          child: const Text('Logout'),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ExploreChip extends StatelessWidget {
  const _ExploreChip({
    super.key,
    required this.wm,
    required this.item,
  });

  final IRegistrationPageWidgetModel wm;
  final ExploreItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => wm.selectItem(item.name),
      child: Chip(
        onDeleted: wm.isSelected(item) ? () => wm.selectItem(item.name) : null,
        label: Text(
          item.name,
          style: wm.textTheme.bodySmall?.copyWith(
            color: wm.colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}

class CheckBoxGroup extends StatelessWidget {
  const CheckBoxGroup({
    Key? key,
    this.selected,
    required this.values,
    this.onTap,
  }) : super(key: key);

  final String? selected;
  final List<String> values;
  final ValueSetter<String>? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        for (final name in values)
          RadioListTile(
            value: name,
            groupValue: selected,
            onChanged: (_) => onTap?.call(name),
            title: Text(
              name,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onBackground,
              ),
            ),
          ),
      ],
    );
  }
}
