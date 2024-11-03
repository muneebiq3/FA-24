import 'package:flutter/material.dart';
import 'TrendingProducts.dart';
void main() {
  runApp(MaterialApp(
    home: buttonDemo(),
  ));
}

class buttonDemo extends StatelessWidget {
  void doSOmething() {}

  TextStyle headingFontStyle(Color color) {
    return TextStyle(fontSize: 35, color:color);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Buttons demo lecture', style: headingFontStyle(Colors.pinkAccent),),
          TrendingProducts(),
          // Container(height: 15,width: double.infinity,)
          //DO not use container for adding empty space
          //Use sizedBox instead
          SizedBox(
            height: 12,
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    print('Text button is pressed');
                  },
                  child: Text(
                    'Tap here',
                    style: headingFontStyle(Colors.green),
                  ))),
          CustomeButton(),
          SizedBox(
            height: 30,
          ),
          CustomContainer(),
          GestureDetector(
            onTap: () {},
            child: Text('Gesture detector'),
          ),
          Text('Some data', style: TextStyle(fontFamily: 'Ariel', fontSize: 45),)
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Single tap detected');
      },
      onDoubleTap: () {
        print('Double tap detected');
      },
      child: Icon(
        Icons.access_alarm,
        size: 80,
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Container(
          height: 400,
          width: 400,
          color: Colors.purpleAccent.shade100,
        ));
  }
}



