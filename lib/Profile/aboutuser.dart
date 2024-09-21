import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({super.key});

  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.only(top: 150),
                width: 500,
                height: 400,
                decoration: BoxDecoration( 
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80)),
                ),
                child: Column( 
                  children: [ 
                    CircleAvatar( 
                      backgroundImage: AssetImage("images/sigma_man.png"),
                      radius: 50,
                    ),
                    Text('Rifat Hasan Priyo',style: TextStyle( 
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        Icon(Icons.location_on_rounded,size: 10,),
                        Text('Dhaka Bangladesh',style: TextStyle( 
                          fontSize: 10,
                        ),)
                      ],
                    ),
                    SizedBox( 
                      height: 10,
                    ),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 34,), 
                        Column( 
                          children: [ 
                            Text('977',style: TextStyle( 
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),),
                            Text('Posts',style: TextStyle( 
                              fontSize: 12,
                              
                            ),),
                          ],
                        ),
                        SizedBox(width: 34,),
                        Column( 
                          children: [ 
                            Text('987k',style: TextStyle( 
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),),
                            Text('Followers',style: TextStyle( 
                              fontSize: 12,
                              
                            ),),
                          ],
                        ),
                        SizedBox(width: 34,),
                        Column( 
                          children: [ 
                            Text('177',style: TextStyle( 
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),),
                            Text('Following',style: TextStyle( 
                              fontSize: 12,
                              
                            ),),
                          ],
                        ),
                        
                      ],
                    )
                  ],
                ),
              );
  }
}