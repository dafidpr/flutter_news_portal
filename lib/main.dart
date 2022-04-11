import 'package:flutter/material.dart';
import 'package:flutter_news_portal/constants/theme.dart';
import 'package:flutter_news_portal/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: AppTheme.fontFamily),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
