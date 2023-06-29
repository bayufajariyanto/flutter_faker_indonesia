/// ignore_for_file: file_names, unnecessary_brace_in_string_interps
import 'dart:math';

import 'package:flutter_faker_indonesia/src/generator.dart';

class MataUang {
  Generator generator = Generator();
  Random random = Random();

  nominal({int min = 10000, int maks = 100000}) {
    var randomNumber = random.nextInt(maks) + min;

    String numberString = randomNumber.toString();
    String result = "";
    int count = 0;

    for (int i = numberString.length - 1; i >= 0; i--) {
      result = numberString[i] + result;
      count++;

      if (count % 3 == 0 && i != 0) {
        result = ".$result";
      }
    }
    return "Rp$result";
  }
}
