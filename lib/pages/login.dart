import 'package:flutter/material.dart';
import 'package:cheffedlocal/pages/subscriptionplan.dart'; // Adjust the import path if needed

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // Set background color to white
      body: Center(
        child: SingleChildScrollView(  // To prevent overflow on smaller screens
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo (replace with your actual logo)
                Image.asset('assets/logo1.png', width: 150, height: 150),  // replace with your actual logo path


                // Company name text without shadow
                Text(
                  'CHEFFEDLOCAL',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue',  // Use Helvetica Neue font (or change it if missing)
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,  // Black color for the company name
                  ),
                ),

                // Slogan text
                Text(
                  'Try new food local',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontFamily: 'Merriweather',
                  ),
                ),

                SizedBox(height: 30),

                // Email Input
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black, fontFamily: 'Helvetica', fontSize: 20, fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Password Input
                TextFormField(
                  obscureText: true,  // To hide the password text
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontFamily: 'Helvetica', fontSize: 20, fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                // Continue Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the Subscribe screen with no animation
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => Subscribe(),
                        transitionDuration: Duration.zero,  // No animation duration
                        reverseTransitionDuration: Duration.zero,  // No reverse transition
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9C5AA4),  // Purple button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),  // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'HelveticaB',
                    ),
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
