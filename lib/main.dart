import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:theme_app/them_observer.dart';

import 'app.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const ThemeApp()),
    blocObserver: ThemeBlocObserver(),
  );
}
