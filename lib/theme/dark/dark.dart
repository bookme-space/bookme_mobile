import 'package:bookme_mobile/theme/dark/app_bar.dart';
import 'package:bookme_mobile/theme/dark/list_tile.dart';
import 'package:bookme_mobile/theme/dark/text.dart';
import 'package:flutter/material.dart';

final ThemeData darkThemeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xff222222),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow),
  textTheme: const MyTextTheme(),
  appBarTheme: const MyAppBarTheme(),
  listTileTheme: const MyListTileTheme(),
  dividerColor: Colors.white24,
  useMaterial3: true,
);