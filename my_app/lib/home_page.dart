import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import "package:my_app/up_comming_cards.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          UpComingCards()
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