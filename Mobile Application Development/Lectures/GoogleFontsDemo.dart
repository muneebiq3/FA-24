import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: GoogleFontsDemo()));
}

class GoogleFontsDemo extends StatelessWidget {
  const GoogleFontsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Welcome to Student week',
//  style: TextStyle(fontSize: 80),
            style: GoogleFonts.greatVibes(textStyle: TextStyle(fontSize: 45)),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                color: Colors.green,
                image: DecorationImage(
                  // opacity: 0.2,
                  
                  fit: BoxFit.fill,
                  
                  
                  image: AssetImage('images/a.jpg')
                )
                )
                ),
          
        ],
      ),
    );
  }
}
