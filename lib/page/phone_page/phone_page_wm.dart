import 'package:elementary/elementary.dart';
import 'package:flame/internal/logger.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'phone_page_model.dart';
import 'phone_page_widget.dart';

abstract class IPhonePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get phoneController;

  VoidCallback? sendCodeCallback();
}

PhonePageWidgetModel defaultPhonePageWidgetModelFactory(BuildContext context) {
  return PhonePageWidgetModel(
    PhonePageModel(
      context.read(),
      context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for PhonePageWidget
class PhonePageWidgetModel extends WidgetModel<PhonePageWidget, PhonePageModel>
    with ThemeProvider, SnackBarProvider
    implements IPhonePageWidgetModel {
  static const _mask = '+7 000 000 00 00';

  @override
  final phoneController = MaskedTextController(mask: _mask);

  PhonePageWidgetModel(PhonePageModel model) : super(model);

  @override
  VoidCallback? sendCodeCallback() {
    final phone = phoneController.text;

    if (phone.length == _mask.length) {
      return _login;
    }

    return null;
  }

  Future<void> _login() async {
    await model.login(
      phone: phoneController.text,
      codeProvider: () async {
        final code = await router.push<String>(
          CodeRoute(),
        );
        return code;
      },
      onResult: (success, [error]) async {
        if (!success) {
          showSnackBar('Can`t log in');
          return;
        }
        final registered = await model.registered();
        router.popUntilRoot();
        if (registered) {
          router.replace(const HomeRoute());
        } else {
          router.replace(RegistrationRoute());
        }
      },
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
