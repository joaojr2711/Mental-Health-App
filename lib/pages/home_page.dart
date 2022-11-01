// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/emoticon_face.dart';
import '../utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Hi, Junior!
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Junior!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('01 Novembro de 2022',
                          style: TextStyle(color: Colors.blue[200])),
                    ],
                  ),

                  // Notification
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // Search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: Row(children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Search', style: TextStyle(color: Colors.white))
                ]),
              ),

              SizedBox(
                height: 25,
              ),

              // How do you feel?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // 4 different faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😞'),
                      SizedBox(height: 8),
                      Text(
                        'Bad',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '🙂'),
                      SizedBox(height: 8),
                      Text(
                        'Fine',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😄'),
                      SizedBox(height: 8),
                      Text(
                        'Well',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😎'),
                      SizedBox(height: 8),
                      Text(
                        'Excelent',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(25),
            color: Colors.grey[100],
            child: Center(
              child: Column(
                children: [
                  // exercise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excercises',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // listview of exercises
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          color: Colors.red[700],
                          exerciseName: 'Speaking skills',
                          numberOfExercises: 16,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          color: Colors.green,
                          exerciseName: 'Reading speed',
                          numberOfExercises: 8,
                        ),
                        ExerciseTile(
                          icon: Icons.star,
                          color: Colors.yellow[800],
                          exerciseName: 'Writing skills',
                          numberOfExercises: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
