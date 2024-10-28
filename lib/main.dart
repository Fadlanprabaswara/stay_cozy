import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stay_cozy/pages/splash_page.dart';
import 'package:stay_cozy/providers/space_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
