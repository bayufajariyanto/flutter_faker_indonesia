/// library flutter_faker_indonesia;

import 'package:flutter_faker_indonesia/src/helpers/Pekerjaan.dart';
import 'package:flutter_faker_indonesia/src/helpers/Personal.dart';

class Faker {
  final Pekerjaan pekerjaan;
  final Personal personal;

  Faker.generate()
      : pekerjaan = Pekerjaan(),
        personal = Personal();
}
