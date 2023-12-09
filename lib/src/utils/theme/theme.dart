import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamroapp/src/utils/theme/widget_theme/text_theme.dart';


class cAppTheme{

  cAppTheme._(); //privating the class

  static ThemeData lightTheme = ThemeData( brightness: Brightness.light,
    textTheme:cTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme:cTextTheme.darkTextTheme,
  );
}