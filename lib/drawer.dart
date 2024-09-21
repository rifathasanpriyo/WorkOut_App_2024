import 'package:body_exercise_1/homee.dart';
import 'package:flutter/material.dart';

class MydrawerApp extends StatefulWidget {
  const MydrawerApp({super.key});

  @override
  State<MydrawerApp> createState() => _MydrawerAppState();
}

class _MydrawerAppState extends State<MydrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerList(context),
    );
  }
}
Widget DrawerList(BuildContext context){ 

  return Drawer( 
        child: Column( 
          children: [ 
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container( 
                width: 100,
                height: 100,
                decoration: BoxDecoration( 
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
            Text("Rifat Hasan Priyo",style: TextStyle( 
              fontSize: 26
            ),),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>MyhomeClass()));
              },
              child: Icon(Icons.home
              
              )),
          )

          ],
        ),
      );
}
