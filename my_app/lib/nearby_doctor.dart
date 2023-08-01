import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctor extends StatelessWidget {
  const NearbyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    List<DoctorModel> nearbydoctor = [
      DoctorModel(
          name: "Luke Holland",
          position: "General practitioner",
          rating: "4",
          noOfRevews: "195",
          profilePicture: "../asset/doctor_1.jpg"),
      DoctorModel(
          name: "Sophie Harmon",
          position: "General practitioner",
          rating: "2",
          noOfRevews: "243",
          profilePicture: "../asset/doctor_2.jpg"),
      DoctorModel(
          name: "Lousie Reid",
          position: "General practitioner",
          rating: "6",
          noOfRevews: "40",
          profilePicture: "../asset/doctor_3.jpg"),
      //DoctorModel(name: "Luke Holland", position: "General practitioner", rating: "4", NoOfRevews: "195");
      //DoctorModel(name: "Luke Holland", position: "General practitioner", rating: "4", NoOfRevews: "195");
    ];

    return Column(
        //mainAxisAlignment: ma,
        children: List.generate(nearbydoctor.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage(nearbydoctor[index].profilePicture),
                      fit: BoxFit.cover,
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nearbydoctor[index].name , style: Theme.of(context).textTheme.titleSmall,),
                  Text(nearbydoctor[index].position),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                      Text(
                        nearbydoctor[index].rating,
                        //style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                  Text("reviews ${nearbydoctor[index].noOfRevews}")
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}

class DoctorModel {
  final String name;
  final String position;
  final String rating;
  final String noOfRevews;
  final String profilePicture;
  DoctorModel(
      {required this.name,
      required this.position,
      required this.rating,
      required this.noOfRevews,
      required this.profilePicture});
}
