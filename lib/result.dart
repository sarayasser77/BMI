
import 'package:bmical/widgets.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double  weight;
  final  double       height;
  final String gender ;
  final double result ;
  final int age ;

  Result(
      {
        required this.weight,
        required this.age ,
        required this.height,
        required this.result,
        required this.gender
      }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.5),
        appBar: AppBar(
          title: const Text( 'Bmi Result'),
          backgroundColor: Colors.black,
        ),
        body:  Container(
          alignment: Alignment.center,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              TextResultWidget( text1: 'gender' ,  text2: gender),
              TextResultWidget(text1: 'result' , text2:result.round() ),
              TextResultWidget(text1: 'age' ,text2: age),
              TextResultWidget(text1: 'height' ,text2:height.round() ),
              TextResultWidget(text1:  'weight'  ,text2:  weight.round()),
            ],
          ),
        )
    );
  }
}
