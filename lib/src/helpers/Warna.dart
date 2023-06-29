/// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter_faker_indonesia/src/data/warna/warna.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Warna {
  String hex() {
    Random random = Random();

    /// Komponen merah (0-255)
    int r = random.nextInt(256);

    /// Komponen hijau (0-255)
    int g = random.nextInt(256);

    /// Komponen biru (0-255)
    int b = random.nextInt(256);

    String hexColor = '#${r.toRadixString(16).padLeft(2, '0')}'
        '${g.toRadixString(16).padLeft(2, '0')}'
        '${b.toRadixString(16).padLeft(2, '0')}';

    return hexColor.toUpperCase();
  }

  String nama() {
    return Generator().index(listWarna);
  }
}
