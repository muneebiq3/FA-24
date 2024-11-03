import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: productCard()));
}

class productCard extends StatelessWidget {
  const productCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg'))),
        ),
        Text('Camera 1'),
        Text('PKR 10000'),
        Text('4.9'),
      ],
    );
  }
}
