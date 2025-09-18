enum LogLevel { info, warning, error }

class Logger {
  static void log(String message, {LogLevel level = LogLevel.info}) {
    final prefix =
        {
          LogLevel.info: '[INFO]',
          LogLevel.warning: '[WARNING]',
          LogLevel.error: '[ERROR]',
        }[level];
    print('$prefix $message');
  }
}

//class Logger {
//  static void log(String message) {
//   print(message);
//  }
//}
