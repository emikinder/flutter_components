import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard(),
              SizedBox(height: 20),
              CustomCard2(imageUrl: 'https://st1.latestly.com/wp-content/uploads/2022/12/Lionel-Messi-with-FIFA-World-Cup-2022-Trophy.jpg', name: 'Messi Campeón del Mundo'),
              SizedBox(height: 20),
              CustomCard2(imageUrl: 'https://cnnespanol.cnn.com/wp-content/uploads/2022/12/221218193609-deportes-lionel-messi-campeon-analisis-juan-pablo-varsky-full-169.jpg?quality=100&strip=info',),
              SizedBox(height: 20),
              CustomCard2(name: 'Prueba', imageUrl: 'https://cnnespanol.cnn.com/wp-content/uploads/2022/12/221218193609-deportes-lionel-messi-campeon-analisis-juan-pablo-varsky-full-169.jpg?quality=100&strip=info',)
            ]));
  }
}
