import 'package:flutter/material.dart';
import 'package:journo_blog_app/presentation/router/router_imports.dart';
import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: MyStrings.appName,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: _appRouter.config(),
    );
  }
}
