Future<void> main() async {
  await runTest();
}

Future<void> runTest() async {
  // await asyncErrorHandling();
  futureErrorHandling();
}

Future<void> futureErrorHandling() async {
  return Future.delayed(const Duration(seconds: 1))

      //This way error will be caught
      .then((value) => defectedAsyncMethod())

      //This way error can't be caught
      // .then((value) {
      //   defectedAsyncMethod();
      //   return 0;
      // })

      .then((value) => Future.delayed(const Duration(seconds: 1)))
      .catchError((e) {
    print('caught error is : $e');
  });
}

Future<void> asyncErrorHandling() async {
  try {
    await Future.delayed(const Duration(seconds: 1));

    // It will catch the error
    await defectedAsyncMethod();

    // It will NOT catch the error. We must await to catch it
    // defectedAsyncMethod();

    await Future.delayed(const Duration(seconds: 1));
  } catch (e) {
    print('caught error is : $e');
  }
}

Future<void> defectedAsyncMethod() async {
  throw 'type error!';
}
