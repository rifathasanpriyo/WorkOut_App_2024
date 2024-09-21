import 'package:body_exercise_1/full_gym_app/tutrial_video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GymPage extends StatefulWidget {
  final int index;
  GymPage({required this.index});

  @override
  State<GymPage> createState() => _GymPageState();
}

class _GymPageState extends State<GymPage> {
  Widget warmup() {
    return Container(
      height: 300,
      width: double.infinity, // Full width of the parent
      child: LottieBuilder.asset(
        "uidesing/animationlottie/pushupanimation22.json",
        fit: BoxFit.contain,
      ),
    );
  }

  List<String> item = ['Video', 'Gif'];

  List<Widget> videoWidgets() {
    return [
      YouTubePlayerWidget(), // You can add more widgets if necessary
    ];
  }

  bool current = false; // boolean to toggle between video and gif (or warmup animation)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Warmup container taking 1/4 of the screen height
          if (!current) // Show warmup if current is false
            Container(
              height: MediaQuery.of(context).size.height * 0.25, // 1/4 of the screen height
              width: double.infinity,
              child: warmup(), // Include warmup animation inside this container
            ),

          // Expanded widget taking 3/4 of the screen height
          Expanded(
            child: current
                ? videoWidgets()[0] // Show Video if current is true
                : Container(), // Default to warmup animation
          ),

          // Row for buttons
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = !current; // Toggle between Video and Gif
                  });
                },
                child: Container(
                  width: 100,
                  height: 60,
                  color: Colors.blue,
                  child: Center(child: Text("Video")),
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                height: 60,
                color: Colors.amber,
                child: Center(child: Text("Gif")),
              ),
            ],
          ),

          // Add the SingleChildScrollView wrapped in an Expanded widget
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 1000, // Make this taller to test scrolling
                color: Colors.grey[300], // Just for visibility
                child:  Text("Scrollable Content"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
