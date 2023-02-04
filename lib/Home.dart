import 'package:flutter/material.dart';


class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Home page',
      themeMode: ThemeMode.dark,
      darkTheme:ThemeData(
        brightness: Brightness.dark
      )
    );
  }
}
