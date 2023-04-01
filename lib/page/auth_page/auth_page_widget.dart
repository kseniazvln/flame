import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/assets/resourses.dart';
import 'package:flame/l10n/generated/app_localizations.dart';
import 'package:flame/page/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPageWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 5,
              child: NamedLogo(),
            ),
            const Spacer(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  wm.localizations.authNotify,
                  textAlign: TextAlign.center,
                  style: wm.textTheme.bodyLarge?.copyWith(
                    color: wm.colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            Flexible(
              child: _AuthButton(
                onTap: wm.logInWithGithub,
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 50,
                width: 250,
                child: OutlinedButton(
                  onPressed: wm.logInWithPhone,
                  child: Center(
                    child: Text(
                      wm.localizations.phoneLogin,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthButton extends StatelessWidget {
  const _AuthButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: SizedBox(
        height: 50,
        width: 250,
        child: FilledButton(
          onPressed: onTap,
          style: FilledButton.styleFrom(
              backgroundColor: Colors.black, padding: EdgeInsets.zero),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SvgPicture.asset(
                    Resources.gitHubLogo,
                    height: 25,
                    width: 25,
                    color: Colors.white,
                  ),
                ),
                const Flexible(
                  child: VerticalDivider(
                    indent: 5,
                    endIndent: 5,
                    color: Colors.white,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Text(
                    localizations.logInWithGitHub,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
