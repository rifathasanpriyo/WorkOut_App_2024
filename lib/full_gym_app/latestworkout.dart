import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LatestWorkout extends StatefulWidget {
  const LatestWorkout({super.key});

  @override
  State<LatestWorkout> createState() => _LatestWorkoutState();
}

class _LatestWorkoutState extends State<LatestWorkout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
                //color: Color(0xffEAF0FE),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("uidesing/latestac1.png"),
                        //backgroundColor: Colors.amber,
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "FullBody Workout",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Check",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      width: 200,
                      percent: 0.5,
                      progressColor: Colors.blueAccent,
                      backgroundColor: Colors.blueGrey.shade100,
                      barRadius: Radius.circular(30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
         Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
                //color: Color(0xffEAF0FE),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("uidesing/lowerbody.png"),
                        //backgroundColor: Colors.amber,
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          "LowerBody Workout",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Check",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      width: 200,
                      percent: 0.8,
                      progressColor: Colors.blueAccent,
                      backgroundColor: Colors.blueGrey.shade100,
                      barRadius: Radius.circular(30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
         Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
                //color: Color(0xffEAF0FE),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("uidesing/ab workout.png"),
                        //backgroundColor: Colors.amber,
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:1),
                        child: Text(
                          "Ab Workout",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Check",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      width: 200,
                      percent: 0.2,
                      progressColor: Colors.blueAccent,
                      backgroundColor: Colors.blueGrey.shade100,
                      barRadius: Radius.circular(30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
