// ignore_for_file: avoid_print
import 'package:flutter_faker_indonesia/faker.dart';

void main() {
  Faker faker = Faker.generate();

  print({"nama awal": faker.personal.namaAwal()});
  print({"nama akhir": faker.personal.namaAkhir()});
  print({"nama lengkap": faker.personal.namaLengkap()});
  print({"jenis kelamin": faker.personal.jenisKelamin(child: false)});
  print({"agama": faker.personal.agama()});
  print({"ttl": faker.personal.ttl(format: "dd MMMM yyyy")});
  print({"gelar depan": faker.personal.gelarDepan()});
  print({"gelar belakang": faker.personal.gelarBelakang(length: 2)});
  print({"jabatan": faker.pekerjaan.jabatan()});
  print({"perusahaan": faker.pekerjaan.namaPerusahaan(mode: "lengkap")});
  print({"warna": faker.warna.nama()});
}
