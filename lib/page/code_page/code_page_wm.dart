import 'package:elementary/elementary.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'code_page_model.dart';
import 'code_page_widget.dart';

abstract class ICodePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get codeController;

  VoidCallback? confirmCodeCallback();
}

CodePageWidgetModel defaultCodePageWidgetModelFactory(BuildContext context) {
  return CodePageWidgetModel(
    CodePageModel(
      context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for CodePageWidget
class CodePageWidgetModel extends WidgetModel<CodePageWidget, CodePageModel>
    with ThemeProvider
    implements ICodePageWidgetModel {
  @override
  final codeController = TextEditingController();

  CodePageWidgetModel(CodePageModel model) : super(model);

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  VoidCallback? confirmCodeCallback() {
    final phone = codeController.text;

    if (phone.length == 6) {
      return _login;
    }

    return null;
  }

  Future<void> _login() async {
   router.pop(codeController.text);
  }
}
