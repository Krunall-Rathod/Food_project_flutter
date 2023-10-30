import 'package:clg_project/pages/addtocart.dart';
import 'package:flutter/material.dart';

class chinesePage extends StatelessWidget {
  chinesePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Item!'),
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
                          "assets/images/chinese.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Chinese Bhel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹119",
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
                            "assets/images/manchuian.jpeg",
                            height: 80,
                          ),
                        ),
                        Text(
                          "Manchurian",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹109",
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
                          "assets/images/fried.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Fried Rise",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹139",
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
                          "assets/images/hakka.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Hakka Noodles",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹149",
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
