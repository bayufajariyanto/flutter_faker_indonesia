## Documentation
### Personal

Functions in this class:
- namaLengkap()
  - `int length = 2` (optional) The number of words
- namaAwal()
- namaAkhir()
- gelarDepan()
  - `bool singkatan = true` (optional) Ex: `singkatan = true` -> "H.", but if `singkatan = false` -> "Haji"
  - `bool isBoy` (optional) Ex: `isBoy = true` -> "H.", but if `isBoy = false` -> "Hj."
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