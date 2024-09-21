import 'package:flutter/material.dart';

class MyhomeClass extends StatefulWidget {
  const MyhomeClass({super.key});

  @override
  State<MyhomeClass> createState() => _MyhomeClassState();
}

class _MyhomeClassState extends State<MyhomeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      drawer: DrawerList(context),
      body: Container( 
 
        height: 500,
        width: 500,
        color: Colors.red,
      ),
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