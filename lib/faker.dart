/// library flutter_faker_indonesia;

import 'package:flutter_faker_indonesia/src/helpers/Binatang.dart';
import 'package:flutter_faker_indonesia/src/helpers/Lokasi.dart';
import 'package:flutter_faker_indonesia/src/helpers/MataUang.dart';
import 'package:flutter_faker_indonesia/src/helpers/Pekerjaan.dart';
import 'package:flutter_faker_indonesia/src/helpers/Personal.dart';
import 'package:flutter_faker_indonesia/src/helpers/Random.dart';
import 'package:flutter_faker_indonesia/src/helpers/Warna.dart';

class Faker {
  final Binatang binatang;
  final Pekerjaan pekerjaan;
  final Personal personal;
  final Warna warna;
  final AutoRandom random;
  final MataUang mataUang;
  final Lokasi lokasi;

  Faker.generate()
      : pekerjaan = Pekerjaan(),
        binatang = Binatang(),
        personal = Personal(),
        warna = Warna(),
        random = AutoRandom(),
        mataUang = MataUang(),
        lokasi = Lokasi();
}
