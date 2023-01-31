import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final teams = const [
    'Boca Juniors',
    'Colón de Santa Fe',
    'Rosario Central',
    'Talleres de Córdoba',
    'Independiente'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView2')),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            title: Text(teams[i]),
            leading: const Icon(Icons.sports_soccer),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: teams.length,
        ));
  }
}
