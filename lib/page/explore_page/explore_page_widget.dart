import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'explore_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ExplorePage module
@RoutePage()
class ExplorePageWidget extends ElementaryWidget<IExplorePageWidgetModel> {
  const ExplorePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultExplorePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IExplorePageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('EXPLORE'),
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.exploreState,
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        builder: (context, pages) {
          final explorePhotos = pages ?? [];
          return GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: explorePhotos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 4,
            ),
            itemBuilder: (context, index) {
              final explorePhoto = explorePhotos[index];

              return ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: InkResponse(
                  onTap: () => wm.openExplore(explorePhoto),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
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
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: explorePhoto.url,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            explorePhoto.name,
                            style: wm.textTheme.headlineSmall
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
