import 'package:flame/assets/theme/colors.dart';
import 'package:flutter/material.dart';

class NamedLogo extends StatelessWidget {
  const NamedLogo({
    super.key,
    this.axis = Axis.vertical,
    this.size = 200,
  });

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(0.8, 1),
        colors: <Color>[
          logoColor0,
          logoColor1,
          logoColor2,
          logoColor3,
          logoColor4,
          logoColor5,
          logoColor6,
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        direction: axis,
        children: [
          if (!Navigator.canPop(context))
            Flexible(
              flex: axis == Axis.vertical ? 5 : 1,
              child: Icon(
                Icons.local_fire_department_outlined,
                size: size,
                shadows: const [
                  Shadow(
                    blurRadius: 30,
                  )
                ],
              ),
            ),
          Flexible(
            flex: axis == Axis.vertical ? 1 : 5,
            child: FittedBox(
              child: Text(
                Navigator.canPop(context) ? 'Explore' : 'Flame',
                style: textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
