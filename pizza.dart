import 'package:clg_project/pages/addtocart.dart';
import 'package:flutter/material.dart';

class pizzaPage extends StatelessWidget {
  pizzaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza!'),
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
                          "assets/images/italian.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Italian ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹299",
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
                            "assets/images/maxican.jpeg",
                            height: 80,
                          ),
                        ),
                        Text(
                          "Maxican ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹179",
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
                          "assets/images/cheese.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "7 Cheese",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹399",
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
                          "assets/images/puff.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Puff Pizza",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹249",
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
