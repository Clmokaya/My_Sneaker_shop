import 'package:flutter/material.dart';
import 'package:my_sneaker_shop/pages/intro_page.dart';
import 'package:my_sneaker_shop/theme/ThemeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Themeprovider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
