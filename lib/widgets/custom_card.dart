import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.accessibility_new, color: AppTheme.primary),
          title: Text('Titulardo'),
          subtitle:
              Text('Consequat aliqua aliqua voluptate ad mollit cupidatat'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok')
              )
            ],
          ),
        )
      ],
    ));
  }
}
