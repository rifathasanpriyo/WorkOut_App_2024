import 'package:body_exercise_1/full_gym_app/latestworkout.dart';
import 'package:body_exercise_1/full_gym_app/workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontFamily: AutofillHints.birthdayDay,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(230, 206, 201, 201),
                                width: 0.5)),
                        child: Icon(
                          Icons.notifications_none,
                          size: 30,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text("Rifat Hasan",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.playpenSans(
                      textStyle:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF9CC3FA), Color(0xFF95A7F8)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    // Bubble 1
                    Positioned(
                      top: 80,
                      left: 130,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    // Bubble 2
        
                    Positioned(
                      top: 30,
                      right: 10,
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 205, 124, 228),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "BMI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Bubble 3
                    Positioned(
                      bottom: 10,
                      left: 100,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    // Your content
                    Positioned(
                      top: 120,
                      right: 5,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10,left: 10),
                      child: Column(
                        children: [
                          Text(
                            "BMI (Body Mass Index)",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "You have a normal weight",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 80,top: 10),
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration( 
                                color: Color.fromARGB(255, 205, 124, 228),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("View More",style: TextStyle( 
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            
                              ),)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
            SizedBox(height: 20,),
            Container( 
              width: 350,
              height: 60,
              decoration: BoxDecoration( 
                color: Color(0xffEAF0FE),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Text("Today Target",
                    style: TextStyle( 
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Container( 
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration( 
                        gradient: LinearGradient(
                      colors: [Color(0xFF9CC3FA), Color(0xFF95A7F8)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Check",style: TextStyle( 
                        color: Colors.white,
                        fontSize: 16
                      ),)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200,top: 14),
              child: Text("Latest Workout",style: TextStyle( 
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            GestureDetector
            (
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (_)=> WorkOutTracker()));
              },
              child: LatestWorkout()
              
              ),
          ],
        ),
        ]
      ),
    );
  }
}
