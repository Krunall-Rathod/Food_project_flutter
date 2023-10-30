import 'package:clg_project/pages/addtocart.dart';
import 'package:flutter/material.dart';

class southPage extends StatelessWidget {
  const southPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('South indian!'),
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
                          "assets/images/masaladhosa.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Masala Dhoso ",
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
                            "assets/images/1.jpeg",
                            height: 80,
                          ),
                        ),
                        Text(
                          "Cheese Masala ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹129",
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
                          newMethod,
                          height: 80,
                        ),
                      ),
                      Text(
                        "Mysore Masala",
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
                          "assets/images/idlisambhar.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Idli-Sambhar",
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

  String get newMethod => "assets/images/mysoredhosa.jpeg";
}

