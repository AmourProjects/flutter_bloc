import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Colors.red,
    ),
  );

  void changeTheme(MaterialColor themeColor, Brightness themeBrightness) {
    final colorTheme = ThemeData(
      primarySwatch: themeColor,
      brightness: themeBrightness,
      primaryColor: themeColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: themeColor,
      ),
      appBarTheme: AppBarTheme(
        color: themeColor,
      ),
    );

    emit(colorTheme);
  }
}
