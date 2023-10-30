import 'package:clg_project/pages/main-screen.dart';
import 'package:clg_project/pages/addtocart.dart';
import 'package:clg_project/pages/orderdetail_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final Function(cartItem) addToCart;
  final List<cartItem> cartItems;

  // Rename the constructor parameters to avoid naming conflict
  const CartPage({
    Key? key,
    required this.addToCart,
    required this.cartItems,
  }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Widget buildCartItems() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.cartItems.length,
            itemBuilder: (BuildContext context, int index) {
              final cartItem = widget.cartItems[index];
              return ListTile(
                subtitle: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => OrderDetail(
                              cartItems: [],
                              addToCart: (cartItem) {},
                            ),
                          ),
                        );
                        // Create a list to hold the cart items
                      },
                      child: Text('Check Out'),
                    ),
                    Center(
                      child: Container(
                        width: 600,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 229, 125, 5), // Border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Adjust the radius as needed
                          color: Color.fromARGB(255, 217, 227, 234),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // You can adjust the alignment as needed
                          children: <Widget>[
                            // Add your row children here
                            Column(
                              children: [
                                Container(
                                  child: Column(children: [
                                    Text(cartItem.name),
                                    Text(
                                      ' Quantity: ${cartItem.quantity.toStringAsFixed(2)}, Price: ${cartItem.price.toStringAsFixed(2)}',
                                    ),
                                  ]),
                                ),
                              ],
                            ),

                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove))

                            // Add more widgets as needed
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 311),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DashBoard(
                      cartItems: widget.cartItems,
                      addToCart: widget.addToCart,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DashBoard(
                    cartItems: widget.cartItems,
                    addToCart: widget.addToCart,
                  ),
                ),
              );
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: buildCartItems(), // Call the buildCartItems function
    );
  }
}
