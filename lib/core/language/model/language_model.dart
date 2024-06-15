import 'dart:ui';

enum Language {
  english(
    Locale('en', 'IN'),
    'en',
  ),
  greek(
    Locale('el', 'EL'),
    'el',
  );

  const Language(
    this.value,
    this.text,
  );

  final Locale value;
  final String text;
}