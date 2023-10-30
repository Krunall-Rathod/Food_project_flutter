import 'package:clg_project/pages/cart_page.dart';
import 'package:flutter/material.dart';

class cartItem {
  final String name;
  final double price;

  final double quantity;

  cartItem({
    required this.name,
    required this.price,
    required this.quantity,
  });
}

class Addtocart extends StatefulWidget {
  const Addtocart({Key? key}) : super(key: key);

  @override
  _AddtocartState createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  int quantity = 1;
  double productPrice = 129.00;
  List<cartItem> cartItems = [];

  void addToCart() {
    cartItem item = cartItem(
      name: "Cheese Masala",
      quantity: quantity.toDouble(),
      price: productPrice * quantity.toDouble(),
    );

    setState(() {
      cartItems.add(item);
    });

    // Navigate to the cart page
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => CartPage(
    //       addToCart: (cartItem) {},
    //       cartItems: cartItems, // Pass it as a named argument
    //     ),
    //   ),
    // );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Added to Cart"),
          content: Text("Item added to the cart."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );

    setState(() {
      quantity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add to Cart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                        cartItems: cartItems,
                        addToCart: (cartItem) {},
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image
          Container(
            height: 200,
            child: Image.asset(
              "assets/images/1.jpeg",
              height: 300,
            ),
          ),

          // Product Name
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Cheese Masala",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),

          // Product Description
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Description:Cheese Masala Dosa is a delectable South Indian dish that combines the crispy, golden-brown goodness of a traditional dosa with the richness of cheese.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),

          // Quantity selection
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (quantity > 1) {
                    setState(() {
                      quantity--;
                    });
                  }
                },
                icon: Icon(Icons.remove),
              ),
              Text(
                quantity.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),

          // Add to Cart button
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text(
                      (productPrice * quantity.toDouble()).toStringAsFixed(2),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: addToCart,
                    child: Text(
                      'Add to Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
