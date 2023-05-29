## Usage

Use an easy implementation like this

```dart
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  faker.personal.namaLengkap(length: 2);
  // Bayu Fajariyanto

  faker.personal.namaAwal();
  // Bayu

  faker.personal.namaAkhir();
  // Fajariyanto

  faker.personal.gelarDepan();
  // Dr.

  faker.personal.gelarBelakang(length: 2);
  // S.Kom., S.Pd., M.Pd.

  faker.pekerjaan.jabatan()
  // Quality Assurance
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/bayufajariyanto/flutter_faker_indonesia/issues
