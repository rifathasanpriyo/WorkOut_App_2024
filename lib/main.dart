import 'package:body_exercise_1/drawer.dart';
import 'package:body_exercise_1/exercise_screen/diet_cart.dart';
import 'package:body_exercise_1/exercise_screen/exercise.dart';
import 'package:body_exercise_1/full_gym_app/dashboard.dart';
import 'package:body_exercise_1/full_gym_app/excerise_page.dart';
import 'package:body_exercise_1/full_gym_app/tutrial_video.dart';
import 'package:body_exercise_1/full_gym_app/workout.dart';
import 'package:body_exercise_1/loginpage.dart';
import 'package:body_exercise_1/onboard/bottomnavigation.dart'; // Adjust the import as needed
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        
        textTheme: GoogleFonts.openSansTextTheme(),
        
      ),
      home: 
      GymPage(index: 1)
      //WorkOutTracker()
      //DashBoard(),
      //YouTubePlayerWidget(),
      
    );
  }
}
