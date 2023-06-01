## Usage

Here is an example of how you could add a section to your README that shows how to use your package:

Import the dependencies in `pubspec.yaml`

```yaml
dependencies:
  flutter_faker_indonesia: ^latest_version
```

Use an easy implementation like this
```dart
import 'package:faker/faker.dart';

main() {
  var faker = new Faker();

  faker.personal.namaLengkap(length: 2);
  /// Vania Mariska
}
```
## Documentation
### Personal

Functions in this class:
- namaLengkap()
  - `int length = 2` (optional) The number of words
- namaAwal()
- namaAkhir()
- gelarDepan()
  - `bool singkatan = true` (optional) Ex: `singkatan = true` -> "H.", but if `singkatan = false` -> "Haji"
  - `bool is_boy` (optional) Ex: `is_boy = true` -> "H.", but if `is_boy = false` -> "Hj."
- gelarBelakang()
  - `bool singkatan = true` (optional) Ex: `singkatan = true` -> "S.H.", but if `singkatan = false` -> "Sarjana Hukum"
  - `int length = 1` (optional) The number of words
- jenisKelamin()
  - `bool child = false` (optional) Ex: `child = true` -> "Laki-laki", but if `child = false` -> "Pria"

```dart
    faker.personal.namaLengkap();
    /// Zara Azalea

    faker.personal.namaAwal();
    /// Bayu

    faker.personal.namaAkhir();
    /// Fajariyanto

    faker.personal.gelarDepan();
    /// Dr.

    faker.personal.gelarBelakang();
    /// A.Md.Kom.
```

### Pekerjaan

Functions in this class:
- namaPerusahaan()
  - `int mode = "lengkap"` (optional)
    - "lengkap" Ex: PT Venturo Pro Indonesia, PT Suparma Tbk.
    - "badan usaha" Ex: CV, Fa, PD, PN, PO, PT, UD, Koperasi
    - "belakang" Ex: Corp., Inc., Ltd., Tbk., (Persero), (Persero) Tbk.
- jabatan()

```dart
    faker.pekerjaan.namaPerusahaan()
    /// PT Venturo Pro Indonesia

    faker.pekerjaan.jabatan()
    /// Quality Assurance
```

## Contribution
We welcome contributions from the community to improve and expand this package. If you would like to contribute, please follow the steps below:

Check the issues for open tasks or features that you can work on. If there are no relevant issues, you can create a new issue to discuss your proposed contribution.

Fork this repository and create a new branch for your contribution work.

Make the changes you want to implement in your branch.

Once you are done, submit a pull request to the main repository explaining the changes you made and the reasons behind them.

Our development team will review your contribution and provide feedback as soon as possible. If necessary, we may request changes or additional adjustments before merging your pull request.

Please make sure to read [CONTRIBUTING.md][contributing] for further guidelines on how to contribute to this project.


## License

Distributed under the MIT License. See [LICENSE][license] for more information.


## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/bayufajariyanto/flutter_faker_indonesia/issues
[contributing]: https://github.com/bayufajariyanto/flutter_faker_indonesia/blob/main/CONTRIBUTING.md
[license]: https://pub.dev/packages/flutter_faker_indonesia/license