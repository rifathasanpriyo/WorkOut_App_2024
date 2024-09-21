import 'package:body_exercise_1/Profile/aboutuser.dart';
import 'package:body_exercise_1/Profile/appbar.dart';
import 'package:body_exercise_1/Profile/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        backgroundColor: Color.fromARGB(255, 32, 5, 50),
           body: ListView( 
            children: [ 
             Stack( 
              children: [ 
                AboutUser(),
                Myappbar(),
                
              ],
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Recent activity",style: TextStyle( 
                fontSize: 20,
                color: Colors.white
               ),),
             ),
             SizedBox(height: 10,),
             DailyTask(task: "1"),
             SizedBox(height: 5,),
             DailyTask(task: "2"),
             
             
            ],
           ),
           
      ),
    );
  }
}