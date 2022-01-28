import 'package:intl/intl.dart';

class UtilFormatter {
  static currentCurrencyFormat(num coin) {
    NumberFormat format = new NumberFormat("#,##0.00", "es_CO");
    return ("\$ " + format.format(coin) + " COP");
  }
}
