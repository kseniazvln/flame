import 'package:elementary/elementary.dart';
import 'package:flame/internal/logger.dart';

class MainErrorHandler extends ErrorHandler {
  @override
  void handleError(
    Object error, {
    StackTrace? stackTrace,
    bool fatal = false,
  }) {
    /*if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace,
        fatal: fatal,
        printDetails: false,
      );
    }*/
    logger.e('Error occurred', error, stackTrace);
  }
}
