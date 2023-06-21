import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp(
          // title: 'Flutter Demo',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: ThemeView() 
        );
      },
    );
  }
}