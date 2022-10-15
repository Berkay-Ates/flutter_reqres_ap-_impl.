class SharedCustomError<T> implements Exception {
  //? custom error By generics
  void errorDef(T classes, String errorMessage) {
    throw 'the error is $errorMessage caused by on $T classes';
  }

  @override
  String toString() {
    return 'Shared preferences not initialized right now';
  }
}
