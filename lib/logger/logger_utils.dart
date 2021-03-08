class Logger {
  // Sample of abstract logging function
  static void write(String text, {bool isError = false}) {
    // Future.
    Future.microtask(() => print('** $text. isError: [$isError]'));
  }
}
