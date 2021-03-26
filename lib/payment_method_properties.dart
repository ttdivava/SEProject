import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Creating a text input formater class for month
class CardMonthInputFormatter extends TextInputFormatter {
  @override
  // Receive old month value and newvalue to be edited with
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = new StringBuffer();
    // adding a forward slash after month to seperate from year
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = new StringBuffer();
    // adding a space between every 4 digits
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  '); // Add double spaces.
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}

enum CardType {
  MasterCard,
  Visa,
  AmericanExpress,
  Discover,
  Master,
  Verve,
  Others, // other card issuer
  Invalid // We'll use this when the card is invalid
}

class Strings {
  static const String appName = 'Payment Card';
  static const String fieldReq = 'This field is required';
  static const String numberIsInvalid = 'Card is invalid';
}

class PaymentInfo {
  String nameOnCard, cardNumber;
  int cvv, month, year;
  CardType type;

  PaymentInfo(
      {this.nameOnCard,
        this.cardNumber,
        this.type,
        this.month,
        this.year,
        this.cvv});
}

class CardProperties {
  static String validate_cvv(String value) {
    // check if cvv text field is not empty, if it is print required field
    if (value.isEmpty) {
      return Strings.fieldReq; //Strings.fieldReq;
    }
    // check that cvv has valid size either 3 or 4 otherwise it's invalid
    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  // Convert the two-digit year to four-digit year if necessary
  // when 2 digits year entered, e.g: 21 -> 2021
  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString(),
          prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return !(month == null || year == null) && isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // if both year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // 2 Cases to check that the month has passed
    // 1. Year has passed
    // 2. card's month is less than current month
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int four_digit_year = convertYearTo4Digits(year);
    var now = DateTime.now();
    // month has passed if card's year is less than current year
    return four_digit_year < now.year;
  }

  static String validateDate(String value) {
    // check that date field is not empty if it is print required field
    if (value.isEmpty) {
      return Strings.fieldReq;
    }

    int year, month;
    // value for date contains a foward slash when month and year has been entered
    // checking that the value have the slash to confirm that both values has been entered
    if (value.contains(new RegExp(r'(\/)'))) {
      // if yes split the value where the forward slash is found
      var split = value.split(new RegExp(r'(\/)'));
      // set the value before the slash to be the month and next one to be the year
      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      // only the month was entered
      month = int.parse(value.substring(0, (value.length)));
      year = -1; // set to -1 if nothing was entered
    }

    if ((month < 1) || (month > 12)) {
      // check that month is valid between 1 and 12
      return 'Expiration month is invalid';
    }

    var fourDigitYear = convertYearTo4Digits(year);
    if ((fourDigitYear < 1990) || (fourDigitYear > 2050)) {
      // Assuming that a valid year should be from 1990 to 2050
      // Side note, being valid does not mean it has not expired
      return 'Expiry year is invalid';
    }

    if (!hasDateExpired(month, year)) {
      return "Card has expired";
    }
    return null;
  }

  static List<int> getExpiryDate(String value) {
    var split = value.split(new RegExp(r'(\/)'));
    return [int.parse(split[0]), int.parse(split[1])];
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = new RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static String validateCardNum(String input) {
    // sends a message when the card number filled is empty
    // and nothing was entered
    if (input.isEmpty) {
      return Strings.fieldReq;
    }
    //
    //input = getCleanedNumber(input);
    // Card is number is at least 9 digits, if less then invalid card number
    if (input.length < 8) {
      return Strings.numberIsInvalid;
    }

    return null;
  }
}
