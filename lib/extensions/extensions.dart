import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' show Color, TimeOfDay;
import 'package:timeago/timeago.dart' as timeago;

import '../resources/resources.dart';
import '../utils/utils.dart';

extension HexColor on Color {
  static Color fromHex(String hexString) {
    assert(hexString.replaceAll('#', '').length == 6 || hexString.replaceAll('#', '').length == 8);

    hexString = hexString.replaceAll('#', '');
    if (hexString.length == 6) hexString = 'FF$hexString';

    return Color(int.parse(hexString, radix: 16));
  }
}

extension NonNullString on String? {
  String orEmpty() => this ?? Constants.emptyString;
  String orValue(String value) => this ?? value;

  String orEmptyDashed() => this ?? Constants.emptyDashedString;

  String toValueOrEmpty(String value) => this ?? value;

  DateTime? toDateTimeOrNull() => DateTime.tryParse(orEmpty());

  int toIntOrZero() => int.parse(this ?? '0');
  int toIntOrValue(int value) => int.parse(this ?? '$value');
  double toDoubleOrZero() => double.parse(this ?? '0');
  double? toDoubleOrNull() => this == null ? null : double.parse(this ?? '0');
  double toDoubleOrValue(double value) => double.tryParse(orEmpty()) ?? value;

  bool isNotNull() => this != null;
  bool isNull() => this == null;
}

extension StringExtension on String {
  DateTime toDateTime() => DateTime.parse(orEmpty());
}

extension NonNullInt on int? {
  int orZero() => this ?? Constants.orZero;
  bool toBool() => orZero() != 0;
  int orValue(int value) => this ?? value;
  bool isNotNull() => this != null;
  bool isNull() => this == null;
}

extension IntExetnsion on int {
  String nDigits(int n) => toString().padLeft(n, '0');
  Duration millisecondsToDuration() => Duration(milliseconds: this);
}

extension NonNullDouble on double? {
  double orZero() => this ?? Constants.orZeroDouble;
  double orValue(double value) => this ?? value;
  bool isNotNull() => this != null;
  bool isNull() => this == null;

  /// uses String Utils format local currency to convert double to local currency format
  String toLocalCurrency({String? symbol}) {
    return Utils.formatLocaleCurrency(orZero(), symbol: symbol);
  }

  /// uses String Utils format local currency to convert double to DRCR format
  /// -ve is cr where is +ve value is Dr
  String toDrCrFormat({String? symbol}) {
    return Utils.formatLocaleCurrency(orZero(), symbol: symbol, isDrCRFormat: true);
  }

  String toCompactFormat() {
    return NumberFormat.compact().format(this);
  }
}

extension NonNullBool on bool? {
  bool orTrue() => this ?? true;
  bool orFalse() => this ?? false;
  int toInt() => orFalse() ? 1 : 0;
}

extension BoolExtension on bool {
  String toOnOff() => this ? 'On' : 'Off';
}

extension NonNullList<T> on List<T>? {
  List<T> orEmpty() => this ?? <T>[];
}

extension ListExtension<T> on List<T> {
  T? getRandom() => elementAtOrNull(length < 1 ? 0 : Random().nextInt(length));
}

extension DateTimeExtension on DateTime {
  DateTime replaceTime(TimeOfDay time) => DateTime(year, month, day, time.hour, time.minute);

  DateTime addYear(int year) => DateTime(this.year + year, month, day);
  DateTime substractYear(int year) => DateTime(this.year - year, month, day);

  String toTimeAgo() => timeago.format(this);
  String toLastUpdate() => 'Last Update ${timeago.format(this)}';

  String toYYYYMMDD({bool addTime = false, bool use24Hr = true}) {
    return DateFormat('yyyy-MM-dd${addTime ? ' ${use24Hr ? 'HH:mm:ss' : 'hh:mm:ss a'}' : ''}').format(this);
  }

  String toDDMMMMYYYY({bool addTime = false, bool use24Hr = true}) {
    return DateFormat('dd LLLL, yyyy${addTime ? ' ${use24Hr ? 'HH:mm:ss' : 'hh:mm:ss a'}' : ''}').format(this);
  }

  String toDDMMMYYYY({bool addTime = false, bool use24Hr = true}) {
    return DateFormat('dd LLL, yyyy${addTime ? ' ${use24Hr ? 'HH:mm:ss' : 'hh:mm:ss a'}' : ''}').format(this);
  }
}

extension FormatDatetime on DateTime? {
  DateTime? addYear(int year) => this == null ? null : DateTime(this!.year + year, this!.month, this!.day);

  String? toTimeAgo() => this == null ? null : timeago.format(this!);
  String? toLastUpdate() => this == null ? null : 'Last Update ${timeago.format(this!)}';

  String? toYYYYMMDD({bool addTime = false, bool use24Hr = true}) {
    return this == null ? null : this!.toYYYYMMDD(addTime: addTime, use24Hr: use24Hr);
  }

  String? toDDMMMMYYYY({bool addTime = false, bool use24Hr = true}) {
    return this == null ? null : this!.toDDMMMMYYYY(addTime: addTime, use24Hr: use24Hr);
  }

  String? toDDMMMYYYY({bool addTime = false, bool use24Hr = true}) {
    return this == null ? null : this!.toDDMMMYYYY(addTime: addTime, use24Hr: use24Hr);
  }
}

extension DurationExtension on Duration {
  String formatDuration({
    bool includeSec = true,
    bool includeMilliSec = true,
    bool includeMicroSec = true,
  }) {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);
    final seconds = inSeconds.remainder(60);
    final milliseconds = inMilliseconds.remainder(1000);
    final microseconds = inMicroseconds.remainder(1000);

    String formatedString = '$hours:${minutes.nDigits(2)}';
    if (includeSec) {
      formatedString += ':${seconds.nDigits(2)}';
      if (includeMilliSec) {
        formatedString += ':${milliseconds.nDigits(3)}';
        if (includeMicroSec) {
          formatedString += ':${microseconds.nDigits(3)}';
        }
      }
    }

    return formatedString;
  }

  String formatDurationToHM() {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);

    return '$hours H : $minutes m';
  }
}
