/// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter_faker_indonesia/src/data/lokasi/kota.dart';
import 'package:flutter_faker_indonesia/src/data/lokasi/provinsi.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Lokasi {
  Generator generator = Generator();

  double latitude() {
    Random random = Random();
    double minLatitude = -90;
    double maxLatitude = 90;
    double latitude =
        minLatitude + random.nextDouble() * (maxLatitude - minLatitude);
    return latitude;
  }

  double longitude() {
    Random random = Random();
    double minLongitude = -180;
    double maxLongitude = 180;
    double longitude =
        minLongitude + random.nextDouble() * (maxLongitude - minLongitude);
    return longitude;
  }

  provinsi() {
    var provinsi = generator.index(listProvinsi);
    return provinsi["nama"];
  }

  kota() {
    var kota = generator.index(listKota);
    return kota["nama"];
  }
}
