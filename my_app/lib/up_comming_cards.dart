import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpComingCards extends StatelessWidget{
  const UpComingCards({super.key});

  @override
  Widget build(BuildContext context){
return Container(
  width: double.maxFinite,
  height: 200,
  padding:const EdgeInsets.symmetric(vertical:20.0, horizontal: 20.0),
  decoration: BoxDecoration(
    color: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("../asset/doctor_2.jpg", width: 45,),
      ),
      const SizedBox(width: 18,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Dr. Winnie Ballar", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
          const Text("Dental Specialist", style: TextStyle(color: Colors.white54),),
          Container(
            decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(10) ),
            child: const Row(
              children: [
                Icon(Ionicons.calendar_outline, size: 18, color: Colors.white,),
                Padding(padding: EdgeInsets.only(left: 6.0, right: 14.0), child: Text("Today"),)
              ],
            ),
          )
          ],
          
        )
      
      ],
  ),

);

  }
}