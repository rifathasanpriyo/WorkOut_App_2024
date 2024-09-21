import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.all(10),
                width: 500,
                height: 120,
                decoration: BoxDecoration( 
                  color: Color.fromARGB(255, 240, 234, 234),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80)),
                ),
                child:Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text('Profile', 
                      style: TextStyle( 
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search))
                    ],
                  ),
                )
              );
  }
}