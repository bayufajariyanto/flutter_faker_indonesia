/// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter_faker_indonesia/src/generator.dart';

class Waktu {
  Generator generator = Generator();

  /// Untuk menghitung "beberapa waktu yang lalu" secara acak
  timeAgo() {
    final now = DateTime.now();
    final random = Random();
    final randomDifference =
        Duration(minutes: random.nextInt(10080)); // 10080 menit = 7 hari

    final randomTime = now.subtract(randomDifference);

    // Hitung selisih waktu antara waktu acak dan sekarang
    final difference = now.difference(randomTime);

    if (difference.inSeconds < 60) {
      return 'baru saja';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} menit yang lalu';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} jam yang lalu';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} hari yang lalu';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months bulan yang lalu';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years tahun yang lalu';
    }
  }
}
