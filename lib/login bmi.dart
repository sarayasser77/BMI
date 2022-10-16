import 'package:flutter/material.dart';
import 'dart:math';
import 'package:bmical/result.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _MyAppState();
}

class _MyAppState extends State<login> {
  double slidervalue = 100;
  int age = 19;
  double weight = 50;
  bool ismale = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('BMI', style: TextStyle(fontSize: 20),),

        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,

            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ismale? Colors.black:Colors.red, width: 10), borderRadius: BorderRadius.circular(20),
                            color: Colors.white,

                          ),

                          child:InkWell(
                            onTap: (){
                              ismale=true;
                              setState(() {

                              });
                            },
                            child: Icon(Icons.male_outlined,size: 100,),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,

                            border:Border.all(
                                color: ismale? Colors.red:Colors.black, width: 10), borderRadius: BorderRadius.circular(20)),

                        child:InkWell(
                          onTap: (){
                            ismale=false;
                            setState(() {

                            });
                          },
                          child: Icon(Icons.female_outlined,size: 100,),
                        )
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT',
                          style: TextStyle(color: Colors.white, fontSize: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('$slidervalue', style: TextStyle(
                              color: Colors.white, fontSize: 40,),),
                            Text('cm', style: TextStyle(
                                color: Colors.white, fontSize: 20),),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Slider(
                          value: slidervalue,
                          onChanged: (value) {
                            setState(() {
                              slidervalue = value;
                            });
                          },
                          activeColor: Colors.red,
                          inactiveColor: Colors.blue.withOpacity(0.3),
                          min: 100,
                          max: 220,
                          divisions: 120,
                          label: '${slidervalue.round()}',
                        ),
                        SizedBox(
                          height: 20,
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT', style: TextStyle(
                                  color: Colors.white, fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                              Text('$weight', style: TextStyle(
                                  color: Colors.white, fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: () {
                                    weight--;
                                    setState(() {});
                                  },
                                      icon: Icon(Icons.arrow_back_ios,
                                        color: Colors.white,)),
                                  IconButton(onPressed: () {
                                    weight++;
                                    setState(() {});
                                  },
                                      icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white,)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                        width: 30),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('AGE', style: TextStyle(
                                  color: Colors.white, fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                              Text('$age', style: TextStyle(
                                  color: Colors.white, fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: () {
                                    age--;
                                    setState(() {});
                                  },
                                      icon: Icon(Icons.arrow_back_ios,
                                        color: Colors.white,)),
                                  IconButton(onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                      icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white,)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {
                        double result = weight / pow(slidervalue / 100, 2);
                        print(result.round());
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>Result(
                            weight: weight, age: age, height:slidervalue, result: result,
                            gender: ismale? 'male' :  'female' ))
                        );
                      },
                      child:
                      Text('calculate', style: TextStyle(color: Colors.white,)),

                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}