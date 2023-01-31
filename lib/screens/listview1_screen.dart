import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final teams = const [
    'Boca Juniors',
    'Colón de Santa Fe',
    'Rosario Central',
    'Talleres de Córdoba',
    'Independiente'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView1')),
        body: ListView(
          children: [
            ...teams.map((team) => ListTile(
                  title: Text(team),
                  leading: const Icon(Icons.sports_soccer, color: AppTheme.primary,),
                  trailing: const Icon(Icons.chevron_right),
                )).toList(),
          ],
        ));
  }
}
