import 'package:body_exercise_1/bmi_calculator/homescreen.dart';
import 'package:body_exercise_1/onboard/bottomnavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultBmi extends StatefulWidget {
  final double bmi_result;
  final String decision;
  final String info;

  ResultBmi({required this.bmi_result, required this.decision, required this.info});

  @override
  State<ResultBmi> createState() => _ResultBmiState();
}

class _ResultBmiState extends State<ResultBmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 60),
            child: Text(
              "Your BMI Result Is",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "${widget.bmi_result}",
                        style: TextStyle(fontSize: 50, color: const Color.fromARGB(255, 0, 248, 8)),
                      ),
                      
                      Column(
                        children: [
                          if (widget.decision == "Normal")
                            Image.asset("images/normalimage.png",height: 160,)
                          else
                            Image.asset("images/underwight.png",height: 160),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${widget.decision}",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.info,
            style: TextStyle(fontSize: 26, color: Colors.amber),
          ),
          SizedBox(height: 80,),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ButtonNavigation(numIndex: 0,)),
              );
            },
            color: Colors.purple,
            height: 60,
            minWidth: 300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Re-CALCULATE",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
