// import 'package:fa24_demo_project/SecondScreen.dart';
import 'package:fa24_demo_project/ScreenThree.dart';

import 'SecondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScreenThree(),
  ));
}

class screen1 extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //   height: 200,
  //   width: 200,
  //   color: Colors.green,

  //   child:Text(
  //     softWrap:false ,
  //     'Comsats',
  //     style: TextStyle(
  //       fontSize: 80,
  //        color: const Color.fromARGB(255, 41, 78, 148)
  //        ),
  //   )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          softWrap: false,
          'Comsats',
          style: TextStyle(
              fontSize: 80, color: const Color.fromARGB(255, 41, 78, 148)),
        ),
        Text(
          softWrap: false,
          'Wah Campus',
          style: TextStyle(
              fontSize: 80, color: const Color.fromARGB(255, 41, 78, 148)),
        ),
        Icon(
          Icons.lock_clock,
          color: Colors.blue,
          size: 80,
        ),
Row(children: [
Icon(
          Icons.lock_clock,
          color: Colors.blue,
          size: 80,
        ),
        Icon(
          Icons.lock_clock,
          color: Colors.blue,
          size: 80,
        ),
   Text(
          softWrap: false,
          'Wah Campus',
          style: TextStyle(
              fontSize: 80, color: const Color.fromARGB(255, 41, 78, 148)),
        ),
],)

      ],
    );
  }
}
