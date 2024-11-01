import 'package:flutter/material.dart';
import 'package:quizapp/option.dart';
import 'package:quizapp/pages/completed_page.dart';

//5.12 minit flutter quiz App with APi

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 421,
              width: 400,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                      bottom: 60,
                      left: 22,
                      child: Container(
                          height: 170,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 5,
                                    spreadRadius: 3,
                                    color: Colors.blue.shade300)
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '05',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                    Text(
                                      '07',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                  ],
                                ),
                                Center(
                                    child: Text(
                                  'Question 3/10',
                                  style: TextStyle(color: Colors.black),
                                )),
                                SizedBox(
                                  height: 25,
                                ),
                                Text('What is Computer')
                              ],
                            ),
                          ))),
                  Positioned(
                      bottom: 210,
                      left: 140,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: Text(
                            '10',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Options(option: 'option A'),
            Options(option: 'option B'),
            Options(option: 'option C'),
            Options(option: 'option D'),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Completed()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
