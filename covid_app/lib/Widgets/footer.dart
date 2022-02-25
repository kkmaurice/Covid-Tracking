import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime myDate = DateTime(2022, 01, 22);
    DateTime currentTime = DateTime.now();
    Duration difference = currentTime.difference(myDate);
    int days = difference.inDays;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      shadowColor: Colors.grey,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: const [
                Icon(Icons.app_registration_outlined,size: 33,color: Colors.grey),
                Text('H.C. No.',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                SizedBox(width: 12,),
                Text('HC06911630',style: TextStyle(fontSize: 20, color: Colors.black38))
              ],
            ),
           const SizedBox(height: 15,),
            Row(
              children: [
                const Icon(Icons.coronavirus_outlined,size: 33,color: Colors.grey),
                const Text('Last Test Date',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                const SizedBox(width: 12,),
                Text(DateFormat('yyyy-MM-dd').format(myDate),style: const TextStyle(fontSize: 20, color: Colors.black38))
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                const Icon(Icons.book_online_outlined,size: 33,color: Colors.grey,),
                const Text('Result',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                const Text('---',style: TextStyle(color: Colors.white24),),
                Text('Negative Since $days Days',style:const TextStyle(fontSize: 17, color: Colors.black38)),
              ],
            ),
            const SizedBox(height: 38,),
          ],
        ),
      ),
    );
  }
}