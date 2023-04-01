import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/router/un_focus_detector.dart';
import 'package:flutter/material.dart';
import 'phone_page_wm.dart';

// TODO: cover with documentation
/// Main widget for PhonePage module
@RoutePage()
class PhonePageWidget extends ElementaryWidget<IPhonePageWidgetModel> {
  const PhonePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultPhonePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IPhonePageWidgetModel wm) {
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
                child: Text(
                  wm.localizations.myPhone,
                  style: wm.textTheme.displayMedium?.copyWith(
                    color: wm.colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Flexible(
                child: TextField(
                  controller: wm.phoneController,
                  style: wm.textTheme.bodyLarge?.copyWith(
                    color: wm.colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    hintText: wm.localizations.phoneHint,
                  ),
                  keyboardType: TextInputType.phone,
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
                child: SizedBox(
                  height: 50,
                  child: AnimatedBuilder(
                    animation: wm.phoneController,
                    builder: (context, child) {
                      return FilledButton(
                        onPressed:  wm.sendCodeCallback(),
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
