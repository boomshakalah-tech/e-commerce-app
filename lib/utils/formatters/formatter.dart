import 'package:intl/intl.dart';

class CFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('MMM-dd-yyyy')
        .format(date); //formate date of what you like
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_PH", symbol: "₱").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //+63 formate for PH phonm number example +63917 123 4567 or 0917 123 4567
    //edit it after

    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(3, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }
}
