import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

verifyIfValueIsNull(var data) {
  var result = data ?? "";
  return result;
}

String getCompactValue(double amount) {
  return NumberFormat.compact().format(amount ?? 0.0);
}

String getCompactValueForStatCard(double amount,
    {maxToReachBeforeCompressing = 10}) {
  var numberToFormat = amount ?? 0.0;
  return NumberFormat.numberOfIntegerDigits((numberToFormat)) >
          maxToReachBeforeCompressing
      ? NumberFormat.compact().format(numberToFormat)
      : removeUnnecessaryPlaces(numberToFormat);
}

Widget buildCharacter({String value, String value2}) {
  if (value2.isEmpty) {
    String x = value[0];
    return Text(
      x,
      style: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  } else {
    String x = value[0];
    String y = value2[0];
    return Text(
      x + "" + y,
      style: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

String removeUnnecessaryPlaces(double numberToFormat) {
  final doubleFormatter = new NumberFormat("#,##0.00", "en_US");
  final integerFormatter = new NumberFormat("#,##0", "en_US");
  return isInteger(double.tryParse((numberToFormat).toStringAsFixed(2)))
      ? integerFormatter.format((numberToFormat).floor()).replaceAll(',', ' ')
      : doubleFormatter.format((numberToFormat)).replaceAll(',', ' ');
}

// String setCorrectLanguage(String dropDownLanguage) =>
//     dropDownLanguage == translations.text('language.french')
//         ? dropDownLanguage = Language.FRENCH
//         : dropDownLanguage = Language.ENGLISH;

bool isInteger(num value) => value is int || value == value.roundToDouble();

String getCompactValues(double label) {
  return NumberFormat.currency().currencyName;
}

toUpperCase(String value) {
  return value.toUpperCase();
}

toLowerCase(String value) {
  return value.toLowerCase();
}

String capitalize(String name) {
  if (name == null) {
    throw ArgumentError.notNull('string');
  }

  if (name.isEmpty) {
    return name;
  }

  return name[0].toUpperCase() + name.substring(1).toLowerCase();
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

String removeBlank(String value) {
  return value.trim().replaceAll(' ', '');
}

heightHelper(BuildContext context, double portrait, double landscape) {
  var mediaQuery = MediaQuery.of(context);
  var orientation = mediaQuery.orientation;
  var deviceHeight = mediaQuery.size.height -
      mediaQuery.padding.top -
      mediaQuery.padding.bottom;
  return orientation == Orientation.portrait
      ? deviceHeight * portrait
      : deviceHeight * landscape;
}

realSizeHeightHelper(BuildContext context, double portrait, double landscape) {
  var mediaQuery = MediaQuery.of(context);
  var orientation = mediaQuery.orientation;
  return orientation == Orientation.portrait ? portrait : landscape;
}

widthHelper(BuildContext context, double portrait, double landscape) {
  var mediaQuery = MediaQuery.of(context);
  var orientation = mediaQuery.orientation;
  var deviceWidth = mediaQuery.size.width;
  return orientation == Orientation.portrait
      ? deviceWidth * portrait
      : deviceWidth * landscape;
}

String dateTimeFormatting(String myCurrentDate) {
  if (myCurrentDate == null) {
    return "";
  } else {
    DateTime dateAndTime = DateTime.parse(myCurrentDate);
    return formatDateTime(dateAndTime);
  }
}

String formatDateTime(DateTime dateTime) {
  return DateFormat('dd/MM/yyyy  kk:mm').format(dateTime);
}

String dateFormatting(String myCurrentDate, {String format}) {
  if (myCurrentDate == null) {
    return "";
  } else {
    DateTime dateAndTime = DateTime.parse(myCurrentDate);
    return DateFormat(format ?? 'dd/MM/yyyy').format(dateAndTime);
  }
}

String formatToUserFriendlyDate(DateTime dateTime, {String format}) {
  if (dateTime == null) {
    return "";
  } else {
    return DateFormat(format ?? 'dd/MM/yyyy').format(dateTime);
  }
}

String formatDateForServer(String date) {
  if (date.isNotEmpty) {
    List<String> dateTable = date.substring(0, 10).split("/");
    return dateTable[2] + "-" + dateTable[1] + "-" + dateTable[0];
  } else {
    return "";
  }
}

DateTime convertToDateTime(String date) {
  return DateTime.parse(formatDateForServer(date));
}

bool bothBelongTheSameWeek(DateTime dateTime1, DateTime dateTime2) {
  return false;
}

String formatDatetimeForServer(DateTime dateTime) {
  return dateTime != null
      ? formatDateForServer(formatDateTime(dateTime))
      : null;
}

computePercentage(double lowerNumber, double greaterNumber) {
  return (greaterNumber - lowerNumber) * 100 / greaterNumber;
}

signOut() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.clear();
}

// Future<void> shareData({
//   String title,
//   String description,
//   dynamic url,
//   String chooserTitle,
// }) async {
//   await FlutterShare.share(
//       title: title,
//       text: description,
//       linkUrl: url,
//       chooserTitle: chooserTitle);
// }
//
// Future shareFile({
//   File file,
//   String title,
//   String description,
//   Function functionAfterShare,
// }) async {
//   try {
//     await WYLovShare.file(title + '.jpg', title + '.jpg',
//         file.readAsBytesSync().toList(), 'image/jpg',
//         text: description);
//   } catch (e) {
//     print('error: $e');
//   }
// }
