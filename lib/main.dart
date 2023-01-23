import 'package:flutter/material.dart';
import 'package:reaction_askany/models/reaction_box_paramenters.dart';
import 'package:reaction_askany/reaction_askany.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ReactionWrapper(
          boxParamenters: ReactionBoxParamenters(
            brightness: Brightness.light,
            iconSize: 26,
            iconSpacing: 10,
            paddingHorizontal: 30,
            radiusBox: 40,
            quantityPerPage: 6,
          ),
          buttonReaction: const Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Icon(
              Icons.face_outlined,
              size: 20.0,
              color: Colors.grey,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              'your Message ',
            ),
          ),
        ),
      )),
    );
  }
}
