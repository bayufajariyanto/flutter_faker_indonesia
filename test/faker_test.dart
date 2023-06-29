/// ignore_for_file: avoid_print
import 'package:flutter_faker_indonesia/faker.dart';

void main() {
  /// Cek waktu runtime
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();

  Faker faker = Faker.generate();

  /// Binatang
  print({"binatang": faker.binatang.nama()});

  /// Lokasi
  print({"latitude": faker.lokasi.latitude()});
  print({"longitude": faker.lokasi.longitude()});
  print({"provinsi": faker.lokasi.provinsi()});
  print({"kota": faker.lokasi.kota()});

  /// Mata Uang
  print({"mata uang": faker.mataUang.nominal()});

  /// Pekerjaan
  print({"jabatan": faker.pekerjaan.jabatan()});
  print({"perusahaan": faker.pekerjaan.perusahaan(mode: "lengkap")});

  /// Personal
  print({"nama awal": faker.personal.namaAwal()});
  print({"nama akhir": faker.personal.namaAkhir()});
  print({"nama lengkap": faker.personal.namaLengkap()});
  print({"jenis kelamin": faker.personal.jenisKelamin(child: false)});
  print({"agama": faker.personal.agama()});
  print({"ttl": faker.personal.ttl(format: "dd MMMM yyyy")});
  print({"gelar depan": faker.personal.gelarDepan()});
  print({"gelar belakang": faker.personal.gelarBelakang(length: 2)});
  print({"NPWP": faker.personal.NPWP()});
  print({"No. Telp": faker.personal.nomorTelepon()});

  /// Random
  print({"deskripsi": faker.random.deskripsi()});
  print({"uuid": faker.random.uuid()});

  /// Warna
  print({"warna": faker.warna.nama()});
  print({"hex": faker.warna.hex()});

  stopwatch.stop();
  print('Waktu runtime: ${stopwatch.elapsedMilliseconds} ms');
}
