import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key, required this.imageUrl, this.name});

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: AppTheme.primary.withOpacity(0.6),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('lib/assets/jar.gif'),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name!),
              )
          ],
        ));
  }
}
