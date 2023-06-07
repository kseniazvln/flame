import 'dart:math';

import 'package:elementary/elementary.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dismissible_card_stack_wm.dart';
import 'dissmiss_state.dart';

// TODO: cover with documentation
/// Main widget for DismissibleCardStack module
class DismissibleCardStackWidget
    extends ElementaryWidget<IDismissibleCardStackWidgetModel> {
  const DismissibleCardStackWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultDismissibleCardStackWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IDismissibleCardStackWidgetModel wm) {
    return GestureDetector(
      onHorizontalDragStart: wm.onHorizontalDragStart,
      onHorizontalDragUpdate: wm.onHorizontalDragUpdate,
      onHorizontalDragEnd: wm.onHorizontalDragEnd,
      onVerticalDragStart: wm.onVerticalDragStart,
      onVerticalDragUpdate: wm.onVerticalDragUpdate,
      onVerticalDragEnd: wm.onVerticalDragEnd,
      child: ValueListenableBuilder(
        valueListenable: wm.animationState,
        builder: (context, animations, _) {
          return Stack(
            children: [
              Positioned.fill(
                child: ScaleTransition(
                  scale: animations.scaleAnimation,
                  child: EntityStateNotifierBuilder(
                    listenableEntityState: wm.nextCodeShowCaseState,
                    loadingBuilder: (context, _) {
                      return Center(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/happy_flame.png',
                              ),
                            ),
                            const Expanded(child: Text('Cant find anything')),
                          ],
                        ),
                      );
                    },
                    builder: (context, data) {
                      return FlameCard(
                        key: ValueKey(data!.id),
                        codeSowCase: data,
                      );
                    },
                  ),
                ),
              ),
              PositionedTransition(
                rect: animations.positionedAnimation,
                child: EntityStateNotifierBuilder(
                  listenableEntityState: wm.currentCodeShowCaseState,
                  loadingBuilder: (context, _) {
                    return Container();
                  },
                  builder: (context, data) {
                    return AnimatedRotation(
                      key: ValueKey(data!.id),
                      turns: animations.rotationAnimation,
                      duration: const Duration(milliseconds: 50),
                      child: FlameCard(
                        codeSowCase: data,
                      ),
                    );
                  },
                ),
              ),
              Positioned.fill(
                child: ButtonsRow(
                  setLike: wm.setLike,
                  setDislike: wm.setDisLike,
                  setSuperLike: wm.setSuperLike,
                  returnProfile: wm.returnProfile,
                  dismissibleState: wm.dismissibleState,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
    required this.dismissibleState,
    this.setLike,
    this.setDislike,
    this.setSuperLike,
    this.returnProfile,
  });

  final ValueNotifier<DismissibleState> dismissibleState;
  final VoidCallback? setLike;
  final VoidCallback? setDislike;
  final VoidCallback? setSuperLike;
  final VoidCallback? returnProfile;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: dismissibleState,
      builder: (context, direction, _) {
        final state = direction;
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.yellow,
                      shape: const CircleBorder(
                        side: BorderSide(
                          width: 2,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    onPressed: returnProfile,
                    icon: const Icon(
                      Icons.refresh,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor:
                          state == DismissibleState.dislike ? Colors.red : null,
                      shape: const CircleBorder(
                        side: BorderSide(
                          width: 2,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    onPressed: setDislike,
                    icon: Padding(
                      padding: state == DismissibleState.dislike
                          ? EdgeInsets.zero
                          : const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.close,
                        size: 30,
                        color: state == DismissibleState.dislike
                            ? Colors.white
                            : Colors.red,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: state == DismissibleState.superLike
                          ? Colors.blue
                          : null,
                      shape: const CircleBorder(
                        side: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    onPressed: setSuperLike,
                    icon: Icon(
                      Icons.star,
                      size: state == DismissibleState.superLike ? 30 : 24,
                      color: state == DismissibleState.superLike
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.green,
                      backgroundColor:
                          state == DismissibleState.like ? Colors.green : null,
                      shape: const CircleBorder(
                        side: BorderSide(
                          width: 2,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    onPressed: setLike,
                    icon: Padding(
                      padding: state == DismissibleState.like
                          ? EdgeInsets.zero
                          : const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: state == DismissibleState.like
                            ? Colors.white
                            : Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FlameCard extends StatefulWidget {
  const FlameCard({
    super.key,
    required this.codeSowCase,
    this.selectExplore,
  });

  final ValueSetter<String>? selectExplore;
  final FlameUser codeSowCase;

  @override
  State<FlameCard> createState() => _FlameCardState();
}

class _FlameCardState extends State<FlameCard> {
  final ValueNotifier<int> _indexState = ValueNotifier(0);

  void _movePrevious() {
    _indexState.value = max(_indexState.value - 1, 0);
  }

  void _moveNext() {
    _indexState.value = min(
      _indexState.value + 1,
      widget.codeSowCase.pictures.length - 1,
    );
  }

  @override
  void dispose() {
    _indexState.dispose();
    super.dispose();
  }

  Widget _buildDescription(BuildContext context, int index) {
    switch (index) {
      case 0:
        return _MainBio(
          data: widget.codeSowCase,
        );
      default:
        return _InterestsBio(
          data: widget.codeSowCase,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: _indexState,
          builder: (context, selected, _) {
            return Stack(
              fit: StackFit.expand,
              children: [
                for (int i = 0; i < widget.codeSowCase.pictures.length; i++)
                  Positioned.fill(
                    child: ShaderMask(
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.7),
                          Colors.black,
                        ],
                        stops: const [
                          0.6,
                          0.75,
                          0.8,
                          1.0,
                        ],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds),
                      child: Visibility(
                        visible: selected == i,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget.codeSowCase.pictures[i],
                        ),
                      ),
                    ),
                  ),
                Positioned.fill(
                  child: Visibility(
                    visible: widget.codeSowCase.pictures.length > 1,
                    child: _PhotoIndicators(
                      count: widget.codeSowCase.pictures.length,
                      selected: selected,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 100,
                    ),
                    child: _buildDescription(context, selected),
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _movePrevious,
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: _moveNext,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _InterestsBio extends StatelessWidget {
  const _InterestsBio({
    required this.data,
    this.setExplore,
  });

  final ValueSetter<String>? setExplore;
  final FlameUser data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
              text: data.name,
              style: theme.textTheme.displayMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: ' ${data.age}',
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ]),
        ),
        Flexible(
          child: Wrap(
            children: data.interests
                .map(
                  (item) => OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () => setExplore?.call(item),
                    child: Text(
                      item,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _MainBio extends StatelessWidget {
  const _MainBio({
    required this.data,
  });

  final FlameUser data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
              text: data.name,
              style: theme.textTheme.displayMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: ' ${data.age}',
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ]),
        ),
        Text(
          data.bio,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}

class _PhotoIndicators extends StatelessWidget {
  const _PhotoIndicators({
    required this.count,
    this.selected,
  });

  final int count;
  final int? selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: Row(
        children: [
          for (int i = 0; i < count; i++)
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: LinearProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.grey,
                    value: selected == i ? 1 : 0,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
