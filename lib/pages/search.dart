import 'package:flutter/material.dart';
import 'home.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:25),
            // Home icon at top left with GestureDetector
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => Home(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/home.png',
                  width: 40,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Centered Search Icon + Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/search.png',
                  width: 30,
                ),
                SizedBox(width: 15),
                Text(
                  'Search',
                  style: TextStyle(
                    fontFamily: 'HelveticaB',
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            // Subtitle Text
            Align(
              alignment: Alignment.center,
              child: Text(
                'Search by cuisine, meal, or chef',
                style: TextStyle(
                  fontFamily: 'HelveticaB',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Search Input Field
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFF5F6695),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'Type keyword here',
                style: TextStyle(
                  fontFamily: 'HelveticaB',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 50),

            // Mock Search Result
            Row(

              children: [
                // Meal Image
                SizedBox(width:15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/meal.png',
                    width: 70,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),

                // Meal Name & Chef Name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sushi Bistro Plate',
                      style: TextStyle(
                        fontFamily: 'HelveticaB',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Chef Tino',
                      style: TextStyle(
                        fontFamily: 'HelveticaB',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
