import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatar Screen'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('EK'),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: NetworkImage(
                      'https://www.cronista.com/files/image/493/493973/638bc7f743d22_360_480!.jpg?s=18e8dfed145882b8ccc62b7ff54a486b&d=1671231905'),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Card(
                          child: SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.add_business_sharp),
                              const Text('Texto'),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Select'),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Expanded(
                      child: Card(
                          child: SizedBox(
                        height: 150,
                        child: Column(
                          children: const [Text('Texto')],
                        ),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
