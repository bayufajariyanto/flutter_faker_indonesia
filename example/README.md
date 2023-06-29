# Documentation

## Binatang

Functions in this class:
- nama()

```dart
    faker.binatang.nama();
    /// Anjing
```

## Lokasi

Functions in this class:
- latitude()
- longitude()
- provinsi()
- kota()

```dart
    faker.lokasi.latitude();
    /// 32.90315106563871

    faker.lokasi.longitude();
    /// 44.782897404301565

    faker.lokasi.provinsi();
    /// JAWA TIMUR

    faker.lokasi.kota();
    /// KOTA MALANG
```

## Mata Uang

Functions in this class:
- nominal()
	- `int min = 10000`     (optional) Minimum of nominal
	- `int max = 100000`    (optional) Maximum of nominal

```dart
    faker.mataUang.nominal();
    /// Rp14.110
```

## Pekerjaan

Functions in this class:
- perusahaan()
	- `String mode = "lengkap"` (optional)
		- "lengkap"     Ex: PT Venturo Pro Indonesia, PT Suparma Tbk.
		- "badan usaha" Ex: CV, Fa, PD, PN, PO, PT, UD, Koperasi
		- "belakang"    Ex: Corp., Inc., Ltd., Tbk., (Persero), (Persero) Tbk.
- jabatan()

```dart
    faker.pekerjaan.perusahaan()
    /// PT Venturo Pro Indonesia

    faker.pekerjaan.jabatan()
    /// Quality Assurance
```

## Personal

Functions in this class:
- namaLengkap()
  	- `int length = 2`  (optional) The number of words
- namaAwal()
- namaAkhir()
- gelarDepan()
  	- `bool singkatan = true`   (optional) Ex: `singkatan = true` 	-> "H.", but if `singkatan = false` -> "Haji"
  	- `bool isBoy`              (optional) Ex: `isBoy = true` -> "H.", but if `is	Boy = false` -> "Hj."
- gelarBelakang()
  	- `bool singkatan = true`   (optional) Ex: `singkatan = true` -> "S.H.", but if `singkatan = false` -> "Sarjana Hukum"
  	- `int length = 1`          (optional) The number of words
- jenisKelamin()
  	- `bool child = false`  (optional) Ex: `child = true` -> "Laki-laki", but if `child = false` -> "Pria"
- agama()
- ttl()
  	- `String format = "dd/MM/yyyy"`    (optional) Ex: `child = true` -> "Laki-laki", but if `child = false` -> "Pria"
- NPWP()
- nomorTelepon()
	- `String kodeNegara = "62"` (optional)

```dart
    faker.personal.namaLengkap();
    /// Zara Azalea

    faker.personal.namaAwal();
    /// Andi

    faker.personal.namaAkhir();
    /// Wijaya

    faker.personal.gelarDepan();
    /// Dr.

    faker.personal.gelarBelakang();
    /// A.Md.Kom.

    faker.personal.jenisKelamin(child: true);
    /// Laki-laki

    faker.personal.agama();
    /// Islam

    faker.personal.ttl();
    /// {usia: 23, tempat_lahir: Malang, tanggal_lahir: 09 Februari 2000, label: Malang, 09 Februari 2000}

    faker.personal.nomorTelepon();
    /// +6289045361586

    faker.personal.NPWP();
    /// 7859789.3809852358-7.1353.5
```

## Random

Functions in this class:
- deskripsi()
	- `String topik` (optional)
		- "acara"
		- "film"
		- "layanan"
		- "makanan"
		- "minuman"
		- "musik"
		- "produk"
		- "pariwisata"
		- "perusahaan"
		- "properti"
		- "smartphpone
- uuid()

```dart
    faker.random.deskripsi();
    /// Dilengkapi dengan berbagai fitur cerdas....

    faker.random.uuid();
    /// 35abb75c-80d0-4b7e-b18a-5b0d161997f5
```

## Warna

Functions in this class:
- hex()
- nama()

```dart
    faker.warna.hex();
    /// #384471

    faker.warna.nama();
    /// Biru Muda
```
