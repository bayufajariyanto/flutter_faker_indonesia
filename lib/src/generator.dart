import 'dart:math';

class Generator {
  /// Genrator global
  dynamic index(List data) {
    int index = Random().nextInt(data.length);
    return data[index];
  }
}
