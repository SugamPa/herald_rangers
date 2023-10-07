import 'package:easy_localization/easy_localization.dart';
import '../extensions/extensions.dart';

class Utils {
  static String formatLocaleCurrency(double? number, {String? symbol, bool isDrCRFormat = false}) {
    if (number == null) return number.toString().orEmpty();

    if (isDrCRFormat) {
      return NumberFormat.currency(
        customPattern: '${symbol == null ? '' : '\u00A4'}##,##,##0.00 ${number < 0 ? '(Loss)' : '(Profit)'}',
        symbol: symbol,
      ).format(number.abs());
    }

    return NumberFormat.currency(
      customPattern: '${number < 0 ? '-' : ''}${symbol == null ? '' : '\u00A4'}##,##,##0.00',
      symbol: symbol,
    ).format(number.abs());
  }
}
