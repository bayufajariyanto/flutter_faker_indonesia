/// ignore_for_file: file_names, unnecessary_brace_in_string_interps
import 'package:flutter_faker_indonesia/src/data/pekerjaan/jabatan.dart';
import 'package:flutter_faker_indonesia/src/data/pekerjaan/perusahaan.dart';
import 'package:flutter_faker_indonesia/src/generator.dart';

class Pekerjaan {
  Generator generator = Generator();

  /// Mode ada 3 yaitu:
  /// 1. lengkap
  /// 2. badan usaha
  /// 3. belakang
  namaPerusahaan({String mode = "lengkap"}) {
    var result = "";
    switch (mode) {
      case "lengkap":
        {
          var namaLengkap = generator.index(listNamaPerusahaan);
          var depan = namaLengkap["nama_depan"] != null
              ? "${namaLengkap["nama_depan"]} "
              : "";
          var belakang = namaLengkap["nama_belakang"] != null
              ? " ${namaLengkap["nama_belakang"]}"
              : "";
          result = depan + namaLengkap["perusahaan"] + belakang;
        }
        break;
      case "badan usaha":
        {
          var namaDepan = generator.index(listNamaDepanPerusahaan);
          result = namaDepan;
        }
        break;
      case "belakang":
        {
          var namaBelakang = generator.index(listNamaBelakangPerusahaan);
          result = namaBelakang;
        }
        break;
      default:
        {
          var namaLengkap = generator.index(listNamaPerusahaan);
          var depan = namaLengkap["nama_depan"] != null
              ? "${namaLengkap["nama_depan"]} "
              : "";
          var belakang = namaLengkap["nama_belakang"] != null
              ? " ${namaLengkap["nama_belakang"]}"
              : "";
          result = depan + namaLengkap["perusahaan"] + belakang;
        }
    }
    return result;
  }

  jabatan() {
    return generator.index(listJabatan);
  }
}
