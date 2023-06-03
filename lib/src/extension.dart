// ignore_for_file: unnecessary_this, unnecessary_null_comparison

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }

  String capitalEachWord() {
    if (this == null) {
      return "";
    }

    if (this.length <= 1) {
      return this.toUpperCase();
    }

    /// Pisahkan string menjadi beberapa kata
    final List<String> words = this.split(' ');

    /// Gunakan huruf kapital pada huruf pertama setiap kata
    final capitalizedWords = words.map((word) {
      if (word.trim().isNotEmpty) {
        final String firstLetter = word.trim().substring(0, 1).toUpperCase();
        final String remainingLetters = word.trim().substring(1);

        return '$firstLetter$remainingLetters';
      }
      return '';
    });

    /// Join/Merge semua kata kembali menjadi satu String
    return capitalizedWords.join(' ');
  }

  String bulanIndonesia() {
    var short = {
      "jan": "Jan",
      "feb": "Feb",
      "mar": "Mar",
      "apr": "Apr",
      "may": "Mei",
      "jun": "Jun",
      "jul": "Jul",
      "aug": "Agu",
      "sep": "Sep",
      "oct": "Okt",
      "nov": "Nov",
      "dec": "Des",
    };
    var translationMap = {
      "jan": "Januari",
      "feb": "Februari",
      "mar": "Maret",
      "apr": "April",
      "may": "Mei",
      "jun": "Juni",
      "jul": "Juli",
      "aug": "Agustus",
      "sep": "September",
      "oct": "Oktober",
      "nov": "November",
      "dec": "Desember"
    };

    String bulanIndo = "";
    String delimiter = "";
    try {
      short.forEach((key, value) {
        String lower = this.toLowerCase();
        var temp = lower.contains(key);
        if (temp) {
          String bulan = "";
          var regex = RegExp(r'[A-Za-z]+');

          var matches = regex.allMatches(this);

          for (var match in matches) {
            if (match.group(0)!.length > 2) {
              bulan = match.group(0)!;
              break;
            }
          }
          bulanIndo = bulan.toLowerCase();

          /// Jika panjang bulan > 3 ambil yang panjang, jika tidak ambil yang array pendek
          if (bulan.length > 3) {
            bulanIndo = translationMap[key]!;
          } else {
            bulanIndo = short[key]!;
          }
          delimiter = bulan;
          throw "";
        }
      });
    } catch (e) {
      print(e);
    }

    if (bulanIndo != "") {
      /// Pisahkan bulan inggris, dan selipkan bulan indonesia
      var split = this.split(delimiter);
      return split.join(bulanIndo);
    } else {
      return "";
    }
  }
}
