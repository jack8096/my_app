import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:my_app/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      useMaterial3:true,      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const Text("Hi, Deepak"),Text("welcome lets check your appoinment", style: Theme.of(context).textTheme.bodyMedium,)],
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Ionicons.search_outline)),
          IconButton(onPressed: null, icon: Icon(Ionicons.notifications_outline))
          ],
      ),
      body:const HomePage(),
    );
  }
}