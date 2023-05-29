import 'package:flutter_faker_indonesia/src/data/pekerjaan/jabatan.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Pekerjaan {
  Generator generator = Generator();
  jabatan() {
    return generator.index(listJabatan);
  }
}
