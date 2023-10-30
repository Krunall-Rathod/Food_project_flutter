import 'package:clg_project/pages/addtocart.dart';
import 'package:flutter/material.dart';

class breakfastPage extends StatelessWidget {
  breakfastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BreakFast!'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 322,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 217, 227, 234),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 217, 227, 234),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          10,
                          30,
                          10,
                          20,
                        ),
                        child: Image.asset(
                          "assets/images/gathiya.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Gathiya-Jalebi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹49",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addtocart(),
                      ),
                    ),
                    child: Container(
                      height: 200,
                      width: 322,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 217, 227, 234),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 217, 227, 234),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            10,
                            30,
                            10,
                            20,
                          ),
                          child: Image.asset(
                            "assets/images/dhokla.jpeg",
                            height: 80,
                          ),
                        ),
                        Text(
                          "Dhokla",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹39",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ],
                      ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 322,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 217, 227, 234),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 217, 227, 234),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          10,
                          30,
                          10,
                          20,
                        ),
                        child: Image.asset(
                          "assets/images/sendwich.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Sendwich",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹59",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 322,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 217, 227, 234),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 217, 227, 234),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          10,
                          30,
                          10,
                          20,
                        ),
                        child: Image.asset(
                          "assets/images/samosa.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Samosa",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹49",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ], 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
