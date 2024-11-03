import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StateDemo()));
}

class StateDemo extends StatefulWidget {
  const StateDemo({super.key});

  @override
  State<StateDemo> createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> with test{
  var _userNameController = TextEditingController();
  double w = 200;
  double h = 300;
  Color c = Colors.yellow.shade100;
  bool flag = true;

  String data = 'Tap here';
@override
  void initState() {
    // TODO: implement initState
    super.initState();

 // _userNameController.text = 'Pakistan';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Text(
          'Heading',
          style: TextStyle(fontSize: 40),
        ),
        TextField(
          controller: _userNameController,
          keyboardType: TextInputType.datetime,
          obscureText: false,
          decoration: InputDecoration(
              border:
                  //OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
              styleForInputsBorders(),
              hintText: 'Password should be Capatilize letter',
              icon: Icon(Icons.alarm),
              label: Text('Enter Password'),
              suffix: IconButton(onPressed: () {}, icon: Icon(Icons.password))),
        ),
        UnconstrainedBox(
            child: Container(
          height: h,
          width: w,
          color: c,
        )),
        InkWell(
          child: Text(
            '$data',
            style: TextStyle(fontSize: 45),
          ),
          onTap: () {
            setState(() {
              if (flag) {
                c = Colors.cyanAccent;
                w = 500;
                h = 600;
                flag = false;
              } else {
                c = Colors.yellowAccent.shade100;
                w = 300;
                h = 200;
                flag = true;
              }
              data = _userNameController.text;

            });
          }, //ontap
        )
      ],
    ));
  }


}
class Student{
  ///variables
  void checkTimeTable(){

  }
  void regCourse(){


  }

}
mixin test{
  List<Color> colors = [
    Colors.green,
    Colors.yellowAccent,
    Colors.blueGrey,
  ];

  OutlineInputBorder styleForInputsBorders(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(25)
    );

  }
  Container customContainer(){


    return Container();
  }

}