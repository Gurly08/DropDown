import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

enum DataKapalCategory {jayakarta, kordisinir, jurimudi, borinerisia}
enum LayananKapalCategory {service1, service2, service3, service4}
enum JasaCategory{jasaLabuh, jasaTambat, jasaYatch, jasaAirBersih}


class Jasa{
  Jasa({
    required this.date,
    required this.amount,
    required this.dataKapalCategory,
    required this.layananKapalCategory,
    required this.jasaCategory,
    required this.title,
  });

  final DateTime date;
  final DataKapalCategory dataKapalCategory;
  final LayananKapalCategory layananKapalCategory;
  final JasaCategory jasaCategory;
  final double amount;
  final String title;

   String get formattedDate {
    return formatter.format(date);
  }
}

class JasaBucket {
  const JasaBucket({
    required this.jasa,
  });
  final List<Jasa> jasa;

  double get totalExpenses {
    double sum = 0;

    for (final jasa in jasa) {
      sum += jasa.amount;
    }
    return sum;
  }

}