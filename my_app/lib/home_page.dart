import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_app/health_needs.dart';
import 'package:my_app/nearby_doctor.dart';
import "package:my_app/up_comming_cards.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const UpComingCards(),
          
          const SizedBox(height: 40), Text("Health Needs" , style: Theme.of(context).textTheme.titleLarge, ),
          
          const HealthNeeds(),

          const SizedBox(height: 40), Text("Nearby Doctor" , style: Theme.of(context).textTheme.titleLarge, ),
          const NearbyDoctor()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels:false,
        showUnselectedLabels: false,
        items: const [
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline ), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: "green"),
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: "boo"),
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: "goo"),
      
      ]),
    );
  }
}