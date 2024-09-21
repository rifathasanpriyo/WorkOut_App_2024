import 'package:flutter/material.dart';

class DailyTask extends StatefulWidget {
  
  String task;
  DailyTask({ required  this.task});

  @override
  State<DailyTask> createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 100,
      width: 400,
      decoration: BoxDecoration( 
        color: Color.fromARGB(255, 193, 101, 210),
        borderRadius: BorderRadius.only(topRight:
        Radius.circular(70),
        bottomRight:  Radius.circular(70),
         ) 
         
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration( 
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Center(
                      child: Text("Task: ${widget.task}",style: TextStyle( 
                        fontSize: 24,
                        color: Colors.white
                      ),),
                    ),
                  ),
                  Text("Successful",style: TextStyle( 
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 255, 8),
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            )
          ],
         ),
      );
    
  }
}