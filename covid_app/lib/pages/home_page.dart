// ignore_for_file: sized_box_for_whitespace

import 'package:covid_app/Widgets/footer.dart';
import 'package:covid_app/Widgets/header_section.dart';
import 'package:covid_app/Widgets/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
           // SizedBox(height: 10),
              HeaderSection(),
              Padding(
                padding: EdgeInsets.only(top: 8,left: 12,right: 12,bottom: 15),
                child: MainBody(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8,left: 35,right: 12),
                child: Text('Health Card',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(
                  12.0),
                child: FooterPage(),
              )
            ]
          )
          ],
        ),
      ),
    );
  }
}