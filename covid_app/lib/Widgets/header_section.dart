// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      //height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF8c1639),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15,),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
               const Icon(Icons.menu,color: Colors.white, size: 40,),
                 const SizedBox(width: 50,),
                 Expanded(child: Text('EHTERAZ',style: TextStyle(fontSize: 25,color: Colors.white),)),
                const SizedBox(width: 20,),
              ],
            ),
          ),
          const SizedBox(height: 25,),
      
          // second row of the header
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:const [
                   Icon(Icons.favorite_border_outlined,color: Colors.white, size: 28,),
                   SizedBox(height: 10,),
                   Text('Health status',style: TextStyle(fontSize: 11,color: Colors.white),)  
                ],
              ),
              Column(
            children:const [
               Icon(Icons.timeline_outlined,color: Colors.white, size: 28,),
               SizedBox(height: 10,),
               Text('Statistics',style: TextStyle(fontSize: 11,color: Colors.white),)  
            ],
          ),
          Column(
            children:const [
               Icon(Icons.add_ic_call_outlined,color: Colors.white, size: 28,),
               SizedBox(height: 10,),
               Text('Hotline',style: TextStyle(fontSize: 11,color: Colors.white),)  
            ],
          ),
          Column(
            children: const [
               Icon(Icons.notifications_none,color: Colors.white, size: 28,),
               SizedBox(height: 10,),
               Text('Notification',style: TextStyle(fontSize: 11,color: Colors.white),)  
            ],
          ),
          Column(
            children:const [
               Icon(Icons.kitchen,color: Colors.white, size: 28,),
               SizedBox(height: 10,),
               Text('Vaccination',style: TextStyle(fontSize: 11,color: Colors.white),)  
            ],
          )
            ],
          ),
          
        ]
      )
    );
  }
}