import 'package:flutter/material.dart';
import 'theme/dinexa_theme.dart';
import '../shared/widgets/dinexa_scaffold.dart';

class DinexaApp extends StatelessWidget {
  const DinexaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinexa',
      debugShowCheckedModeBanner: false,
      theme: DinexaTheme.dark(),
      home: const DinexaScaffold(),
    );
  }
}
