import 'package:flutter/material.dart';
import 'package:flutter_faker_indonesia/faker.dart';

void main() {
  runApp(const FloatLabs());
}

class FloatLabs extends StatelessWidget {
  const FloatLabs({super.key});

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker.generate();
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: SafeArea(child: Text(faker.pekerjaan.namaPerusahaan())),
        ));
  }
}
