/// ignore_for_file: file_names

import 'package:flutter_faker_indonesia/src/data/personal/gelar.dart';
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

  jenisKelamin({bool child = false}) {
    List gender = ["Pria", "Wanita"];
    List genderChild = ["Laki-laki", "Perempuan"];
    String result = "";
    if (child) {
      result = generator.index(genderChild);
    } else {
      result = generator.index(gender);
    }
    return result;
  }

  gelarDepan({bool? isBoy, bool singkatan = true}) {
    var temp = generator.index(listGelarDepan);
    Map object;
    bool getPriaAndMatch = isBoy != null &&
        isBoy &&
        (temp["sex"] == "pria" || temp["sex"] == null);
    bool getWanitaAndMatch = isBoy != null &&
        isBoy &&
        (temp["sex"] == "pria" || temp["sex"] == null);

    if (getPriaAndMatch) {
      object = temp;
    } else if (getWanitaAndMatch) {
      object = temp;
    } else {
      /// Jika isBoy null langsung return
      if (isBoy == null) {
        object = temp;
      } else if (isBoy) {
        /// Cari sampai dapat pria
        do {
          object = generator.index(listGelarDepan);
        } while ((isBoy && temp["sex"] == "pria"));
      } else {
        /// Cari sampai dapat wanita
        do {
          object = generator.index(listGelarDepan);
        } while ((isBoy && temp["sex"] == "wanita"));
      }
    }

    String result = singkatan ? object["singkatan"] : object["label_id"];
    return result;
  }

  gelarBelakang({bool singkatan = true, int length = 1}) {
    var temp = generator.index(listGelarBelakang);
    temp = singkatan ? temp["singkatan"] : temp["label_id"];

    List gelarExplode = [];
    gelarExplode.add(temp);
    if (length >= 2) {
      for (int i = 1; i < length; i++) {
        var temp = generator.index(listGelarBelakang);
        temp = singkatan ? temp["singkatan"] : temp["label_id"];
        gelarExplode.add(temp);
      }
    }
    String result = gelarExplode.join(", ");
    return result;
  }
}
