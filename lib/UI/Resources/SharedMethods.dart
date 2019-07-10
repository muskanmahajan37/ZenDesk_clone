import 'package:intl/intl.dart';

String getDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('MMM dd, yyyy');
    String formatted = formatter.format(now);
    return formatted;
  }