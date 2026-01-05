import 'package:flutter/material.dart';

import '../../features/home/home_page.dart';
import '../../features/movements/movements_page.dart';
import '../../features/debts/debts_page.dart';
import '../../features/reports/reports_page.dart';
import '../../features/settings/settings_page.dart';

class DinexaScaffold extends StatefulWidget {
  const DinexaScaffold({super.key});

  @override
  State<DinexaScaffold> createState() => _DinexaScaffoldState();
}

class _DinexaScaffoldState extends State<DinexaScaffold> {
  int _index = 0;

  final _pages = const [
    HomePage(),
    MovementsPage(),
    DebtsPage(),
    ReportsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dinexa')),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz_rounded), label: 'Movimientos'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card_rounded), label: 'Deudas'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_rounded), label: 'Reportes'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Ajustes'),
        ],
      ),
    );
  }
}
