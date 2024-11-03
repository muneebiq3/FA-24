import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(child: Icon(Icons.favorite)),
          FlutterLogo(
            size: 35,
          )
        ],
        
        leading: Column(
          children: [
            Column(
              children: [
                Text('H'),
                Icon(
                  Icons.menu,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:48.0),
          child: Text(
            'AppBar',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blue,
        // centerTitle: true,
      ),
      body: Column(),
// floatingActionButton: ,
// drawer: ,
//
    );
  }
}
