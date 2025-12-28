import 'package:flutter/material.dart';
import 'home.dart'; // Import Home page

class Bag extends StatelessWidget {
  const Bag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center-align column items
          children: [
            SizedBox(height: 30),
            // Bag icon at top left with GestureDetector to navigate to Home
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => Home(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/home.png',
                  width: 50,
                ),
              ),
            ),

            SizedBox(height: 10), // Reduce space

            // Bag Header Row (Bag Icon + Text)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bag.png',
                  width: 35,
                ),
                SizedBox(width: 10),
                Text(
                  'Bag',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 40), // Reduce space

            // Header Row (Meal, Quantity, Price) - Positioned closer to center
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width:20),
                Text(
                  'Meal',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width:130),
                Text(
                  'Quantity',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width:30),
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

  SizedBox(height:10),
            // Line below header (does not cover the whole width)
            Container(
              width: MediaQuery.of(context).size.width * 0.88, // 80% of screen width
              height: 1,
              color: Colors.black,
            ),

            SizedBox(height: 40), // Reduce space

            // First Meal Row
            mealRow(),

            SizedBox(height: 60), // Increase space between meal rows

            // Second Meal Row
            mealRow(),

            SizedBox(height:250), // Add some extra space

            // Checkout Button
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85, // 80% width
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xFF46B1C9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'CHECKOUT',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10), // Small spacing at the bottom
          ],
        ),
      ),
    );
  }

  // Function to build a meal row
  Widget mealRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:0), // Add padding for spacing
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space out meal, quantity, and price
        children: [
          // Meal Image & Details
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/meal.png',
                  width: 70,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sushi Bistro Plate',
                    style: TextStyle(
                      fontFamily: 'HelveticaB',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Chef Tino',
                    style: TextStyle(
                      fontFamily: 'HelveticaB',
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Quantity Controls
          Row(
            children: [
              Icon(Icons.remove, size: 20),
              SizedBox(width: 10),
              Text(
                '1',
                style: TextStyle(
                  fontFamily: 'HelveticaB',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.add, size: 20),
            ],
          ),

          // Price
          Text(
            '\$13',
            style: TextStyle(
              fontFamily: 'HelveticaB',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
