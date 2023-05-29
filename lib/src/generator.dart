import 'dart:math';

class Generator {
  dynamic index(List data) {
    int index = Random().nextInt(data.length);
    return data[index];
  }
}
