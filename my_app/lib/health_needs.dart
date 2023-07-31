import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});


  @override
  Widget build(BuildContext context) {
List<customicon> healthNeeds =[
  customicon(icon: "../asset/appointment.png", title: "Appointment"),
  customicon(icon: "../asset/hospital.png", title: "Hospital"),
  customicon(icon: "../asset/virus.png", title: "Covid-19"),
  customicon(icon: "../asset/more.png", title: "More"),
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
              borderRadius: BorderRadius.all(Radius.circular(30))),
            height: 60,
            
            padding: EdgeInsets.all(13),
            child: Image.asset(healthNeeds[index].icon),),
            Text(healthNeeds[index].title)
        ],
        
      );
      })
    );
  }



}


class customicon{final String icon; final String title;
customicon({
required this.icon,
required this.title

});}
  

