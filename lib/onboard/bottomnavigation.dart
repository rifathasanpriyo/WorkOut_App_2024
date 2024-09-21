import 'package:body_exercise_1/Profile/profile_page.dart';
import 'package:body_exercise_1/bmi_calculator/homescreen.dart';
import 'package:body_exercise_1/exercise_screen/diet_cart.dart';
import 'package:body_exercise_1/exercise_screen/exercise.dart';
import 'package:flutter/material.dart';

class ButtonNavigation extends StatefulWidget {
 int numIndex;
 ButtonNavigation({required this.numIndex});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  late int index;
  List<Widget> listMenu = [
    HomeScreen(),
    ExercisePage(),
    DietChart(),
    ProfilePage() // Example placeholder for ProfilePage
  ];
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.numIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: listMenu[index]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'BMI Calculator',
            backgroundColor: Colors.purple
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_for_work_outlined),
            label: 'Workout',
             backgroundColor: Colors.purple
          ),
            BottomNavigationBarItem(
             icon: Icon(Icons.chat_sharp),
             label: 'Deit Cart',
              backgroundColor: Colors.purple
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
             backgroundColor: Colors.purple
          ),
        ],
      ),
    );
  }
}
