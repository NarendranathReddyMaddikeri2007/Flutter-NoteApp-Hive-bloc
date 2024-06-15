enum ActionType {
  addNote,
  editNote,
  deleteNote,
  changeLayout,
  changeTheme,
  changeLocale,
}

enum AppTheme { darkTheme, lightTheme, greenTheme, blueTheme, systemTheme }

enum AppTags{
  password,
  links,
  note
}

enum AppSort { date, title, description }

enum AppLayout {
  listLayout,
  gridLayout
}

enum CloseOpen{
  close,
  open
}

enum LayoutStatus {
  initial,
  loading,
  success,
  empty,
  error,
}

