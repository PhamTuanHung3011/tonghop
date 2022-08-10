

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Ask My Anything'),
          backgroundColor: Colors.green,
        ),
        body: MagicBall(),
      ),
    )
  );
}



class MagicBall extends StatefulWidget {

  @override
  State<MagicBall> createState() => _MagicBallState();

}

class _MagicBallState extends State<MagicBall> {
  int choiseNumber = 1;

  void changeBall() {
    setState(() {
      choiseNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  print("button press");
                  changeBall();
                },
                child: Image.asset('images/ball$choiseNumber.png'),
              )),
        ],
      ),
    );
  }
}


// class MaigcBall extends StatelessWidget {
//
//   int choiseNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//               child: FlatButton(
//                 onPressed: () {
//                   print("button press");
//                 },
//                 child: Image.asset('images/ball$choiseNumber.png'),
//               )),
//         ],
//       ),
//     );
//   }
//
// }