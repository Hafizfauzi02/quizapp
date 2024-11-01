import 'package:flutter/material.dart';

//15.07
class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 521,
            width: 510,
            child: Stack(
              children: [
                Container(
                  height: 340,
                  width: 410,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 85,
                      backgroundColor: Colors.white.withOpacity(.3),
                      child: CircleAvatar(
                        radius: 71,
                        backgroundColor: Colors.white.withOpacity(.4),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Your Score',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '100',
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                      TextSpan(
                                        text: 'pt',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 60,
                    left: 22,
                    child: Container(
                      height: 190,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 3,
                                color: Colors.blue.withOpacity(.7),
                                offset: Offset(0, 1))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Text(
                                              '100%',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Completion')
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Total Question')
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green,
                                              ),
                                            ),
                                            Text(
                                              '07',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Correct')
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text(
                                                '03',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Colors.red),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text('Wrong')
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
