import 'package:clg_project/pages/addtocart.dart';
import 'package:flutter/material.dart';

class punjabiPage extends StatelessWidget {
  punjabiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punjabi!'),
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
                          "assets/images/paneermasala.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Panner Masala",
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
                            "assets/images/palakpaneer.jpeg",
                            height: 80,
                          ),
                        ),
                        Text(
                          "Palak Paneer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹199",
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
                          "assets/images/dalmakhnni.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Dal Makhni",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹189",
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
                          "assets/images/paneertika.jpeg",
                          height: 80,
                        ),
                      ),
                      Text(
                        "Paneer Tika",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 125, top: 10),
                            child: Text(
                              "₹199",
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
