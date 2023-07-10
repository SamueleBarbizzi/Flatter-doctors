import 'package:intl/intl.dart';

class Impact{
  static final baseUrl = "https://impact.dei.unipd.it/bwthw/";
  static final pingEndpoint = "gate/v1/ping/";
  static final tokenEndpoint = "gate/v1/token/";
  static String refreshEndpoint = 'gate/v1/refresh/';
  static String caloriesEndpoint = 'data/v1/calories/patients/';

  static DateFormat intDateFormat = DateFormat("yyyy-MM-dd");
  static DateTime today = DateTime.now();
  static String startDate = intDateFormat.format(today.subtract(Duration(days: 8)));
  static String endDate = intDateFormat.format(today.subtract(Duration(days: 1)));

  static final patientUsername = "Jpefaq6m58";

  static final username = "TEuLBZQD4V";  
  static final password = "12345678!"; 
}