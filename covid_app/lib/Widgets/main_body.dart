import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainBody extends StatelessWidget {
  const MainBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DateTime myDate = DateTime(2021-01-01);

    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Card(
          shadowColor: Colors.grey,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                const Text('VICTORIA AINE BAKUNZI',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                const SizedBox(height: 15,),
                DottedBorder(
                  color: const Color.fromARGB(255, 226, 189, 3),
                  strokeWidth: 4,
                  dashPattern: const [20, 6],
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Screenshot2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding:const EdgeInsets.only(left: 18,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(DateFormat('dd-MM-yyyy KK:mm:ss a').format(DateTime.now()),style: const TextStyle(fontSize: 18,)),
                      const SizedBox(width: 10,),
                      const Icon(Icons.lock_open_rounded,color: Colors.yellow,),
                      const Expanded(child: Text('Press to verify', style: TextStyle(fontSize: 15,)))
                    ],
                  ),
                )
              ]
            ),
          ),
        );
      }
    );
  }
}