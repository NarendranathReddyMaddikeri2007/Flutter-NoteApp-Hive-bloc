  import 'package:flutter/material.dart';
import 'package:note_app1/core/enum.dart';

String getDateFormat({required DateTime dateTime}) {
    String res = '$dateTime'.split(' ')[0];
    dynamic list = res.split('-');
    res = '${list[2]}-${list[1]}-${list[0]}';
    return res;
  }

  const String spThemeKey = 'THEME';

  Map<AppLocale, Locale> localeMap = {
     AppLocale.tamilLocale : const Locale('ta'),
     AppLocale.teluguLocale : const Locale('te'),
     AppLocale.hindiLocale : const Locale('hi'),
     AppLocale.greekLocale : const Locale('el'),
     AppLocale.englishLocale : const Locale('en'),
  };