import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_faker_indonesia/flutter_faker_indonesia.dart';

void main() {
  Faker faker = Faker.generate();
  print({"nama awal": faker.personal.namaAwal()});
  print({"nama akhir": faker.personal.namaAkhir()});
  print({"nama lengkap": faker.personal.namaLengkap(length: 1)});
}
