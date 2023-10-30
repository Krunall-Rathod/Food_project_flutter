// import 'dart:ffi';

// import 'package:clg_project/pages/Welcome_page.dart';
import 'package:clg_project/pages/addtocart.dart';
import 'package:clg_project/pages/breakfast.dart';
import 'package:clg_project/pages/chinese.dart';
import 'package:clg_project/pages/south.dart';
import 'package:clg_project/pages/cart_page.dart';
import 'package:clg_project/pages/pizza.dart';
import 'package:clg_project/pages/punjabi.dart';
import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  final Function(cartItem) addToCart;
  final List<cartItem> cartItems;
  DashBoard({
    super.key,
    required this.addToCart,
    required this.cartItems,
  });

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> imagePaths = [
    'assets/images/indian1.jpeg',
    'assets/images/indian2.jpeg',
    'assets/images/indian3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text('Sneakers'),
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(Icons.menu, color: Color.fromARGB(255, 238, 79, 5)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 215, 123, 61),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                        cartItems: widget.cartItems,
                        addToCart: widget.addToCart,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.shopping_bag),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170, top: 20),
            child: Text(
              'Food For You',
              style: TextStyle(
                  color: Color.fromARGB(255, 252, 95, 4),
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0, top: 10),
            child: Text(
              'Only Vegeterian',
              style: TextStyle(
                  color: Color.fromARGB(255, 22, 110, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(height: 20),

          //  for image load banner
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 370,
                    height: 200,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            Color.fromARGB(255, 217, 227, 234), // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                      color: Color.fromARGB(255, 217, 227, 234),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 40),
                              child: Text(
                                "Fancy Dosa", // Replace with your text
                                style: TextStyle(
                                  color: Colors.black, // Text color
                                  fontSize: 19, // Text size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Starting ₹129", // Replace with your text
                                style: TextStyle(
                                  color: Color.fromARGB(
                                      255, 120, 108, 108), // Text color
                                  fontSize: 16, // Text size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => southPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 0, 0, 0)),
                              ),
                              child: Text('OrderNow'),
                            )
                          ],
                        ),
                        Expanded(
                          child: ClipOval(
                            child: Image.asset(
                              imagePaths[index],
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // for categories
          Padding(
            padding: const EdgeInsets.only(right: 220, top: 25),
            child: Text(
              'Food Categories',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => southPage(),
                        ),
                      ),
                      child: Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 194, 81, 11),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 217, 227, 234),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/dhoso.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),

                            // Center(
                            //   child: Text(
                            //     "Kids",
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 0, 0, 0),
                            //       fontSize: 50,
                            //       fontWeight: FontWeight.w700,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chinesePage(),
                        ),
                      ),
                      child: Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 194, 81, 11),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 217, 227, 234),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/OIP1.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => punjabiPage(),
                        ),
                      ),
                      child: Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 194, 81, 11),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 217, 227, 234),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/OIP.jpg",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 10),
                  //           child: Container(
                  //             height: 200,
                  //             width: 370,
                  //             decoration: BoxDecoration(
                  //               border: Border.all(
                  //                 color: Color.fromARGB(
                  //                     255, 217, 227, 234), // Border color
                  //                 width: 2.0, // Border width
                  //               ),
                  //               borderRadius: BorderRadius.circular(
                  //                   20), // Adjust the radius as needed
                  //               color: Color.fromARGB(255, 217, 227, 234),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Container(
                  width: 60, // Adjust the width and height as needed
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 227, 234),
                    // You can change the background color
                    shape: BoxShape.circle, // This creates a circular shape
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => southPage(),
                      ),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/south.jpeg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60, // Adjust the width and height as needed
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 227, 234),
                    // You can change the background color
                    shape: BoxShape.circle, // This creates a circular shape
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => punjabiPage(),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/punjabi.jpeg",
                          height: 100,
                          width: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60, // Adjust the width and height as needed
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 227, 234),
                    // You can change the background color
                    shape: BoxShape.circle, // This creates a circular shape
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pizzaPage(),
                      ),
                    ),
                    child: Center(
                        child: Image.asset(
                      "assets/images/pizza1.jpeg",
                      height: 30,
                      width: 80,
                    )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60, // Adjust the width and height as needed
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 227, 234),
                    // You can change the background color
                    shape: BoxShape.circle, // This creates a circular shape
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => chinesePage(),
                      ),
                    ),
                    child: Center(
                        child: Image.asset(
                      "assets/images/chinese1.jpeg",
                      height: 75,
                      width: 40,
                    )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 52, // Adjust the width and height as needed
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 227, 234),
                    // You can change the background color
                    shape: BoxShape.circle, // This creates a circular shape
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => breakfastPage(),
                      ),
                    ),
                    child: Center(
                        child: Image.asset(
                      "assets/images/gujrati.jpeg",
                      width: 50,
                      height: 40,
                    )),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),
// CART BTN
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 22, left: 40),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                borderRadius:
                    BorderRadius.circular(20), // Adjust the radius as needed
                color: Color.fromARGB(255, 244, 87, 3),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartPage(
                              cartItems: widget.cartItems,
                              addToCart: (cartItems) {},
                            )),
                  );
                },
                icon: Icon(
                  Icons.shopping_bag,
                  size: 34,
                ),
              ),
            ),
          ),
          // CART BTN  CLOSE
        ],
      ),
    );
  }
}
