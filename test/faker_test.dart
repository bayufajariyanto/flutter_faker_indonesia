import 'dart:math';
import 'package:flutter_faker_indonesia/faker.dart';

void main() {
  final randomNumberGenerator = Random();
  final randomBoolean = randomNumberGenerator.nextBool();
  Faker faker = Faker.generate();
  // print({"nama awal": faker.personal.namaAwal()});
  // print({"nama akhir": faker.personal.namaAkhir()});
  // print({"nama lengkap": faker.personal.namaLengkap(length: 2)});
  // print({"jenis kelamin": faker.personal.jenisKelamin(child: false)});
  print({"gelar depan": faker.personal.gelarDepan()});
  print({"gelar belakang": faker.personal.gelarBelakang()});
}
