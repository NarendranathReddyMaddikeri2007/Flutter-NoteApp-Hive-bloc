enum ActionType {
  addNote,
  editNote,
  deleteNote,
  changeLayout,
  changeTheme,
  changeLocale,
}

enum AppTheme { darkTheme, lightTheme, greenTheme, blueTheme, systemTheme }

enum AppLocale {
  englishLocale,
  spanishLocale,
  franchLocale,
  hindiLocale,
  tamilLocale,
  teluguLocale,
  chineseLocale,
  russianLocale,
  germanLocale,
}

enum AppSort{
  date,
  title,
  description
}

enum AppLayout {
  listLayout,
  gridLayout,
}

enum LayoutStatus {
  initial,
  loading,
  success,
  empty,
  error,
}
