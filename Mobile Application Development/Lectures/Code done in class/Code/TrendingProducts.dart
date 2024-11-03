import 'package:flutter/material.dart';
class TrendingProducts extends StatelessWidget {
  const TrendingProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 50),
      child: IconButton(
        onPressed: () {
          print('ABC button is pressed');
        },
        icon: Icon(
          Icons.abc,
          size: 45,
        ),
        splashColor: Colors.green,
      ),
    );
  }//build
}//class end