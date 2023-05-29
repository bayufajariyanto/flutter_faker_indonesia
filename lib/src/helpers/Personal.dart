import 'package:flutter_faker_indonesia/src/data/personal/nama.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Personal {
  Generator generator = Generator();
  namaAwal() {
    return generator.index(listNamaAwal);
  }

  namaAkhir() {
    return generator.index(listNamaAkhir);
  }

  namaLengkap({int length = 2}) {
    List namaExplode = [];
    namaExplode.add(generator.index(listNamaAwal));
    if (length >= 2) {
      for (int i = 1; i < length; i++) {
        namaExplode.add(generator.index(listNamaAkhir));
      }
    }
    String result = namaExplode.join(" ");
    return result;
  }
}
