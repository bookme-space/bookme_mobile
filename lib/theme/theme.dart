import 'package:bookme_mobile/theme/dark/dark.dart';
import 'package:bookme_mobile/theme/light/light.dart';
import 'package:flutter/material.dart';

ThemeData getTargetTheme (BuildContext context) =>
   MediaQuery.of(context).platformBrightness == Brightness.light ? lightThemeData : darkThemeData;