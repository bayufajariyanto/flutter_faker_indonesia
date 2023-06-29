// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:math';
import "../extension.dart";

import 'package:flutter_faker_indonesia/src/data/lokasi/kota.dart';
import 'package:flutter_faker_indonesia/src/data/personal/agama.dart';
import 'package:flutter_faker_indonesia/src/data/personal/gelar.dart';
import 'package:flutter_faker_indonesia/src/data/personal/nama.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';
import 'package:intl/intl.dart';

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

  agama() {
    return generator.index(listAgama);
  }

  /// Tempat Tanggal Lahir
  ///
  /// Ex: Pasuruan, 30 Agustus 1999
  ///
  /// Dokumentasi format:
  /// https://api.dart.dev/stable/1.10.1/dart-core/DateTime/toIso8601String.html
  ttl({String format = "dd/MM/yyyy"}) {
    String tempatLahir =
        generator.index(listKota)["nama"].toLowerCase().toString();
    tempatLahir = tempatLahir.capitalEachWord();

    /// Remove Kab. dan Kota
    var splitKab = tempatLahir.split("Kab. ");
    var joinSplitKab = splitKab.join("");
    var splitKota = joinSplitKab.split("Kota ");
    var joinSplitKota = splitKota.join("");

    /// Random range usia
    int minUsia = 18;
    int maxUsia = 65;

    Random rnd = Random();
    var usia = minUsia + rnd.nextInt(maxUsia - minUsia);

    var today = DateTime.now();

    /// Tanggal lahir
    var bornDate = DateTime(today.year - usia, today.month, today.day,
        today.hour, today.minute, today.second);

    /// Tanggal lahir di usia 18 tahun (Usia minimal)
    var minDate = DateTime(today.year - minUsia, today.month, today.day,
        today.hour, today.minute, today.second);

    var bornDateFormat = DateFormat("yyyy-MM-dd").format(bornDate);
    var minDateFormat = DateFormat("yyyy-MM-dd").format(minDate);

    /// Timestamp dari tanggal lahir -> lebih kecil dari minTime
    DateTime sdate = DateTime.parse(bornDateFormat);
    int bornTime = sdate.millisecondsSinceEpoch;

    /// Timestamp dari tanggal lahir usia minimal -> lebih besar dari bornTime
    DateTime sdate2 = DateTime.parse(minDateFormat);
    int minTime = sdate2.millisecondsSinceEpoch;

    /// Generate timestamp acak range bornTime sampai minTime
    double rndTimestamp = bornTime + rnd.nextDouble() * (minTime - bornTime);
    int rndTimestampInt = rndTimestamp.toInt();

    DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(rndTimestampInt);
    String bornDateResult = DateFormat(format).format(tsdate);

    String bornDateIndonesia = bornDateResult.bulanIndonesia();

    return {
      "usia": usia,
      "tempat_lahir": joinSplitKota,
      "tanggal_lahir": bornDateIndonesia,
      "label": "$joinSplitKota, $bornDateIndonesia"
    };
  }

  String NPWP() {
    /// Format NPWP: 12.345.678.9-012.345

    String npwpNumber = '';

    /// Generate digit pertama - ke7
    for (int i = 0; i < 7; i++) {
      npwpNumber += (Random().nextInt(9) + 1).toString();
    }

    npwpNumber += '.';

    /// Generate digit ke8 - 17
    for (int i = 0; i < 10; i++) {
      npwpNumber += (Random().nextInt(10)).toString();
    }

    npwpNumber += '-';

    /// Generate digit verifikasi NPWP
    npwpNumber += (Random().nextInt(9) + 1).toString();

    npwpNumber += '.';

    /// Generate blok kantor cabang NPWP
    for (int i = 0; i < 4; i++) {
      npwpNumber += (Random().nextInt(10)).toString();
    }

    npwpNumber += '.';

    /// Generate digit verifikasi blok kantor cabang
    npwpNumber += (Random().nextInt(9) + 1).toString();

    return npwpNumber;
  }

  String nomorTelepon({kodeNegara = "62"}) {
    Random random = Random();

    /// Menghasilkan 1- digit angka acak sebagai nomor telepon
    String phoneNumber = '';
    for (int i = 0; i < 10; i++) {
      phoneNumber += random.nextInt(10).toString();
    }

    /// Menggabungkan country code dan nomor telepon
    String randomPhoneNumber = "+$kodeNegara" "8$phoneNumber";

    return randomPhoneNumber;
  }
}
