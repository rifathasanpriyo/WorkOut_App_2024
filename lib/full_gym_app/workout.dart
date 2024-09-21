import 'package:body_exercise_1/exercise_screen/exercise.dart';
import 'package:body_exercise_1/full_gym_app/dashboard.dart';
import 'package:body_exercise_1/full_gym_app/excerise_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkOutTracker extends StatefulWidget {
  const WorkOutTracker({super.key});

  @override
  State<WorkOutTracker> createState() => _WorkOutTrackerState();
}

class _WorkOutTrackerState extends State<WorkOutTracker> {
  List workout = [
    {'name': 'Warm Up', 'time': '05:00', 'image': 'uidesing/warmupp2.png'},
    {'name': 'Push Up', 'time': '12x', 'image': 'uidesing/pushupicon.png'},
     {'name': 'Squats', 'time': '20x', 'image': 'uidesing/squarts.png'},
    {'name': 'Jumping Jack', 'time': '15x', 'image': 'uidesing/jampingjack.jpg'},
   
    {'name': 'Arm Raises', 'time': '00:53', 'image': 'uidesing/arameraise.png'},
    {'name': 'Rest and Drink', 'time': '02:00', 'image': 'uidesing/restanddrink.png'},
   
  ];
  List workout_set2 = [
    {'name': 'High Knees', 'time': '30x', 'image': 'uidesing/highnick.png'},
  {'name': 'Plank', 'time': '01:00', 'image': 'uidesing/Plank.png'},
  {'name': 'Lunges', 'time': '15x', 'image': 'uidesing/Lunges.png'},
  {'name': 'Mountain Climbers', 'time': '20x', 'image': 'uidesing/Mountain Climbers.png'},
  {'name': 'Bicep Curls', 'time': '12x', 'image': 'uidesing/Bicep Curls.png'},
  {'name': 'Burpees', 'time': '10x', 'image': 'uidesing/Cooldown Stretch.png'},
  
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF9CC3FA), Color(0xFF95A7F8)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 80,
                      left: 50,
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Image.asset(
                      "uidesing/Men-Vector.png",
                      height: 400,
                      width: 400,
                    ),
                  ],
                ),
              ),
            ),
            bottom: AppBar(
              automaticallyImplyLeading: false,
                title: Text(
              "Full Body Workout",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 219, 242),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      ),
                      Text("Schedule Workout"),
                      Text(
                        "5/27, 09:00 AM",
                        style: TextStyle(fontSize: 10),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              )
            ],
          )),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You’ll Need",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container( 
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration( 
                            color: Color.fromARGB(255, 230, 241, 241),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('uidesing/barbel.png'))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Barbell",style: TextStyle( 
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(width: 10),
                       Container( 
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration( 
                            color: Color.fromARGB(255, 230, 241, 241),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('uidesing/skipping-rope.png'))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Text("Skipping Rope",style: TextStyle( 
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container( 
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration( 
                            color: Color.fromARGB(255, 230, 241, 241),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('uidesing/water-bottle.png'))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Bottle 1 Liters",style: TextStyle( 
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container( 
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration( 
                            color: Color.fromARGB(255, 230, 241, 241),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('uidesing/pngwing.com.png'))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Mats",style: TextStyle( 
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ),
         SliverToBoxAdapter( 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Set 1",style: TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
         ),
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: workout.length,
                  (context, index) {
            return Padding(
  padding: const EdgeInsets.all(8.0),
  child: GestureDetector(
    onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>GymPage(index: index,)));
    },
    child: Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 80,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(workout[index]["image"]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            // Use Expanded to ensure the workout name and time fit properly
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      workout[index]["name"].trim(),  // Trim whitespace from workout name
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis, // Avoid overflow
                    ),
                    Text(workout[index]["time"]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.arrow_forward_rounded),
            ),
          ],
        ),
      ),
    ),
  ),
);

          })),
          SliverToBoxAdapter( 
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Set 2",style: TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
         ),
         SliverList(
              delegate: SliverChildBuilderDelegate(childCount: workout_set2.length,
                  (context, index) {
            return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    child: Container(
      height: 80,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(workout_set2[index]["image"]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          // Use Expanded to ensure the workout name and time fit properly
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    workout_set2[index]["name"].trim(),  // Trim whitespace from workout name
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis, // Avoid overflow
                  ),
                  Text(workout_set2[index]["time"]),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.arrow_forward_rounded),
          ),
        ],
      ),
    ),
  ),
);

          })),
        ],
      ),
    );
  }
}
