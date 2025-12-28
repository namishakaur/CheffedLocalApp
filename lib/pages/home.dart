import 'package:flutter/material.dart';
import 'search.dart';
import 'bag.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // To allow scrolling if the content overflows
        child: Column(
          children: [
            SizedBox(height: 40),
            // Top Navigation Bar (No gap between the top bar and logo)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Search(),
                          transitionDuration: Duration.zero, // No transition duration
                          reverseTransitionDuration: Duration.zero, // No reverse transition
                        ),
                      );
                    },
                    child: Image.asset('assets/search.png', width: 70),
                  ),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => Bag(),
                              transitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Image.asset('assets/bag.png', width: 70),
                      ),
                      // Shopping bag icon
                      SizedBox(width: 10),
                      Image.asset('assets/profile.png', width: 70),
                      // Profile icon
                    ],
                  ),
                ],
              ),
            ),

            // Centered Logo, directly below the navigation bar
            // Use FittedBox to scale the image
            FittedBox(
              fit: BoxFit.contain, // Keeps aspect ratio, without overflow
              child: Image.asset('assets/logo2.png', width: 300, height: 80),
            ),

            SizedBox(height: 40),
            // Meal Squares Section (Moved up to reduce space between logo and meal boxes)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // First Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mealSquare(
                        backgroundColor: Color(0xFF5F7AE7),
                        mealImage: 'assets/plate.png',
                        mealName: 'PASTA A LA VODKA',
                        chefImage: 'assets/chefnami.png',
                        chefName: 'CHEF TINA',
                        plusIcon: 'assets/plus.png',
                      ),
                      mealSquare(
                        backgroundColor: Color(0xFFD9E13F),
                        mealImage: 'assets/plate.png',
                        mealName: 'PIZZA MARGHERITA',
                        chefImage: 'assets/chefnami.png',
                        chefName: 'CHEF JOHN',
                        plusIcon: 'assets/plus.png',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Second Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mealSquare(
                        backgroundColor: Color(0xFFFCCA46),
                        mealImage: 'assets/plate.png',
                        mealName: 'BURGER DELUXE',
                        chefImage: 'assets/chefnami.png',
                        chefName: 'CHEF SARAH',
                        plusIcon: 'assets/plus.png',
                      ),
                      mealSquare(
                        backgroundColor: Color(0xFF9C5AA4),
                        mealImage: 'assets/plate.png',
                        mealName: 'SUSHI ROLLS',
                        chefImage: 'assets/chefnami.png',
                        chefName: 'CHEF MIKE',
                        plusIcon: 'assets/plus.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Preorder Section (Adjusted padding)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Preorder from these chefs:',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Row of Chef Headshots
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  chefHeadshot(
                    chefImage: 'assets/chefhs.png',
                    chefName: 'CHEF JOE',
                  ),
                  chefHeadshot(
                    chefImage: 'assets/chefhs.png',
                    chefName: 'CHEF TONY',
                  ),
                  chefHeadshot(
                    chefImage: 'assets/chefhs.png',
                    chefName: 'CHEF EMMA',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build each meal square
  Widget mealSquare({
    required Color backgroundColor,
    required String mealImage,
    required String mealName,
    required String chefImage,
    required String chefName,
    required String plusIcon,
  }) {
    return Container(
      width: 161.7, // Adjusted size to match the Figma dimensions
      height: 151.79,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(child: Image.asset(mealImage, width: 60, height: 80)),
                SizedBox(width: 10),
                // Adjusting text to allow multiline and center alignment
                Expanded(
                  child: Text(
                    mealName,
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center, // Centered inside the box
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                ClipOval(child: Image.asset(chefImage, width: 40, height: 40)),
                SizedBox(width: 10),
                Text(
                  chefName,
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Image.asset(plusIcon, width: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to build each chef headshot
  Widget chefHeadshot({required String chefImage, required String chefName}) {
    return Column(
      children: [
        ClipOval(child: Image.asset(chefImage, width: 110, height: 110)),
        Text(
          chefName,
          style: TextStyle(
            fontFamily: 'HelveticaB',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
