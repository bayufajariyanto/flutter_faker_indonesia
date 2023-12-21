/// ignore_for_file: file_names
import 'package:flutter_faker_indonesia/src/data/binatang/binatang.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Binatang {
  Generator generator = Generator();

  /// Generate nama binatang
  nama() {
    return generator.index(listBinatang);
  }
}
