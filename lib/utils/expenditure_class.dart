import 'package:intl/intl.dart';
class Expenditure{

  final String title;
  final String amount;
  final DateTime date=DateTime.now();
  Expenditure({required this.title,required this.amount});
}