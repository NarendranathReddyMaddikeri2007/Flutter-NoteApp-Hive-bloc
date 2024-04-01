  String getDateFormat({required DateTime dateTime}) {
    String res = '${dateTime}'.split(' ')[0];
    dynamic list = res.split('-');
    res = '${list[2]}-${list[1]}-${list[0]}';
    return res;
  }

  const String spThemeKey = 'THEME';