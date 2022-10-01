// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'tilegenre.dart';

class genere extends StatefulWidget {
  genere({Key? key}) : super(key: key);

  @override
  State<genere> createState() => _HomePageState();
}

class _HomePageState extends State<genere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1),
                  color: Colors.white, //border can be changed from here
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          // Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //list view of excersises
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Competetive Exams',
                              numberOfExercises: 160,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Core Subjects',
                              numberOfExercises: 200,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Scifi',
                              numberOfExercises: 30,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Speaking skills',
                              numberOfExercises: 50,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Weekly magazines',
                              numberOfExercises: 20,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              exerciseName: 'Novels and Fiction',
                              numberOfExercises: 200,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
