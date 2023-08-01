import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});


  @override
  Widget build(BuildContext context) {
List<Customicon> healthNeeds =[
  Customicon(icon: "../asset/appointment.png", title: "Appointment"),
  Customicon(icon: "../asset/hospital.png", title: "Hospital"),
  Customicon(icon: "../asset/virus.png", title: "Covid-19"),
  Customicon(icon: "../asset/more.png", title: "More"),
];

    

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(healthNeeds.length, (index){
      return Column(
        children: [
          
          Container(
            width:60,
            
            decoration:BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.4),
              borderRadius:const BorderRadius.all(Radius.circular(30))),
            height: 60,
            
            padding:const EdgeInsets.all(13),
            child: Image.asset(healthNeeds[index].icon),),
            Text(healthNeeds[index].title)
        ],
        
      );
      })
    );
  }



}


class Customicon{final String icon; final String title;
Customicon({
required this.icon,
required this.title

});}
  

