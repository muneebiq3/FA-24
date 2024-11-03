import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       child: Text('Flutter'),
        //       color: Colors.green,
        //       height: 300,
        //       width: 300,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //       height: 300,
        //       width: 300,
        //     ),
        //   ],
        // ),
        body: Stack(
          children: [
            Positioned(
              left: w * 0.2,
              right: w*0.2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: const Color.fromARGB(255, 209, 79, 79)),
                child: Text('$w X $h ', style: TextStyle(fontSize: 45),),
                // color: Colors.green,
                height: 300,
                width: 300,
              ),
            ),
            Positioned(
              // t,
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.rectangle, color: Colors.green),
                // color: Colors.yellow,
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
