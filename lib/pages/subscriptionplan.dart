import 'package:flutter/material.dart';
import 'home.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  // Track the selected option
  int selectedPlan = -1; // -1 means no plan selected

  // Constants for the subscription options
  static const int tenMeals = 0;
  static const int twentyMeals = 1;
  static const int thirtyMeals = 2;

  // Method to handle plan selection
  void selectPlan(int plan) {
    setState(() {
      // If the same plan is clicked, deselect it
      if (selectedPlan == plan) {
        selectedPlan = -1;  // If the same plan is clicked again, it will deselect
      } else {
        selectedPlan = plan;  // If a new plan is selected, set it
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E13F), // Green background
      body: Center(  // Centering everything vertically
        child: SingleChildScrollView(  // Ensures the content is scrollable
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Centering content vertically
              crossAxisAlignment: CrossAxisAlignment.center,  // Centering horizontally
              children: [
                // Title Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0), // This will move the text 5 pixels to the right
                    child: Text(
                      'Subscribe to a meal plan',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),


                // Subscription Plan Options
                Column(
                  children: [
                    // 10 Meals Option
                    GestureDetector(
                      onTap: () => selectPlan(tenMeals),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF90D8F6), // Light Blue
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedPlan == tenMeals
                                ? Colors.white
                                : Colors.transparent,
                            width: 3,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '10 meals',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                Text(
                                  '\$100 / meal',
                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/meal1.png', width: 45), // Adjust image as needed
                                SizedBox(width: 10),
                                if (selectedPlan == tenMeals)
                                  Container(
                                    width: 7, // Smaller white dot
                                    height: 7, // Smaller white dot
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 20 Meals Option
                    GestureDetector(
                      onTap: () => selectPlan(twentyMeals),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9A232), // Orange
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedPlan == twentyMeals
                                ? Colors.white
                                : Colors.transparent,
                            width: 3,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 meals',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                Text(
                                  '\$180 / meal',
                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/meal2.png', width: 45),
                                SizedBox(width: 10),
                                if (selectedPlan == twentyMeals)
                                  Container(
                                    width: 7, // Smaller white dot
                                    height: 7, // Smaller white dot
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 30 Meals Option
                    GestureDetector(
                      onTap: () => selectPlan(thirtyMeals),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFDB302E), // Red
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selectedPlan == thirtyMeals
                                ? Colors.white
                                : Colors.transparent,
                            width: 3,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '30 meals',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                Text(
                                  '\$280 / meal',
                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/meal3.png', width: 43),
                                SizedBox(width: 10),
                                if (selectedPlan == thirtyMeals)
                                  Container(
                                    width: 7, // Smaller white dot
                                    height: 7, // Smaller white dot
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Skip Button (or Continue, based on selection)
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    if (selectedPlan == -1) {
                      // If no plan is selected, you can skip
                      // Navigate to the next page, or skip logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()), // Replace with Home Page or another page
                      );
                    } else {
                      // If a plan is selected, continue to the next step (or any page)
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()), // Replace with next page
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFF9C5AA4), // Purple background
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                // Label Text
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You can always configure this in settings.',
                    style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: 'HelveticaB'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}