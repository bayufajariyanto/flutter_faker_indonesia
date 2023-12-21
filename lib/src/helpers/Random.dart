/// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter_faker_indonesia/src/data/random/deskripsi.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';

class AutoRandom {
  /// Generate deskripsi
  deskripsi({topik = ""}) {
    Random random = Random();

    var result;
    if (listDeskripsi[topik] != null) {
      List tempDeskripsi = listDeskripsi[topik]["deskripsi"].toList();
      result = tempDeskripsi[random.nextInt(tempDeskripsi.length)];
    } else {
      List<String> keys = listDeskripsi.keys.toList();

      String randomKey = keys[random.nextInt(keys.length)];

      List daftarDeskripsi = listDeskripsi[randomKey]["deskripsi"].toList();

      result = daftarDeskripsi[random.nextInt(daftarDeskripsi.length)];
    }
    return result;
  }

  /// Generate UUID menggunakan v4
  uuid() {
    return const Uuid().v4();
  }
}
