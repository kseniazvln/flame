import 'package:elementary/elementary.dart';
import 'package:flame/assets/theme/colors.dart';
import 'package:flame/entity/flame_user.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dismissible_card_stack_wm.dart';

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
                      return const Placeholder();
                    },
                    builder: (context, data) {
                      return FlameCard(
                        key: ValueKey(data!.id),
                        codeSowCase: data,
                        selectedIndex: 0,
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
                    return const Placeholder();
                  },
                  builder: (context, data) {
                    return AnimatedRotation(
                      key: ValueKey(data!.id),
                      turns: animations.rotationAnimation,
                      duration: const Duration(milliseconds: 50),
                      child: FlameCard(
                        codeSowCase: data,
                        selectedIndex: 0,
                      ),
                    );
                  },
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                            foregroundColor: Colors.yellow,
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.refresh),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            foregroundColor: Colors.red,
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            foregroundColor: Colors.blue,
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            foregroundColor: Colors.green,
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FlameCard extends StatelessWidget {
  const FlameCard({
    super.key,
    required this.codeSowCase,
    required this.selectedIndex,
  });

  final int selectedIndex;
  final FlameUser codeSowCase;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
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
          stops: [
            0.7,
            0.85,
            0.9,
            1.0,
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds),
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              for (int i = 0; i < codeSowCase.pictures.length; i++)
                Positioned.fill(
                  child: Visibility(
                    visible: selectedIndex == i,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: codeSowCase.pictures[i],
                    ),
                  ),
                ),
              Positioned.fill(
                child: SizedBox(
                  height: 10,
                  child: Row(
                    children: [
                      for (int i = 0; i < codeSowCase.pictures.length; i++)
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
                                value: selectedIndex == i ? 0 : 1,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
