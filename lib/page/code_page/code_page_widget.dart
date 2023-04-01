import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/router/un_focus_detector.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'code_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CodePage module
@RoutePage<String>()
class CodePageWidget extends ElementaryWidget<ICodePageWidgetModel> {
  const CodePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCodePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICodePageWidgetModel wm) {
    return UnFocusDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(''),
          automaticallyImplyLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Text(
                  wm.localizations.myPhone,
                  style: wm.textTheme.displayMedium?.copyWith(
                    color: wm.colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Flexible(
                child: Pinput(
                  controller: wm.codeController,
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    textStyle: wm.textTheme.bodyLarge?.copyWith(
                      color: wm.colorScheme.onBackground,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: wm.colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: wm.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Text(
                    wm.localizations.aboutPhone,
                    style: wm.textTheme.bodyMedium?.copyWith(
                      color: wm.colorScheme.onBackground,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: 50,
                  child: AnimatedBuilder(
                    animation: wm.codeController,
                    builder: (context, child) {
                      return FilledButton(
                        onPressed: wm.confirmCodeCallback(),
                        child: Center(
                          child: Text(wm.localizations.continueAction),
                        ),
                      );
                    },
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
