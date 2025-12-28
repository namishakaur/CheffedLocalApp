import 'package:flutter/material.dart';
import 'login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E13F),  // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo (use your image asset or icon here)
            Image.asset('assets/logo1.png', width: 150, height: 150),  // replace with your actual logo path

            // Company name text
            Text(
              'CHEFFEDLOCAL',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',  // Use Helvetica Neue font (or change it if missing)
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // Get Started button with arrow icon
            ElevatedButton(
              onPressed: () {
                // Navigate to the Login screen with no animation
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => Login(),
                    transitionDuration: Duration.zero,  // No animation duration
                    reverseTransitionDuration: Duration.zero,  // No reverse transition
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9C5AA4),  // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),  // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontFamily: "Helvetica"
                    ),
                  ),
                  SizedBox(width: 30),  // Spacing between text and icon
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white, size: 26, // White color for the arrow icon
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
