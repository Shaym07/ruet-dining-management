import 'package:flutter/material.dart';

class AdminSignupPage extends StatelessWidget {
  const AdminSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/image7.png", // Ensure this path is correct and added in pubspec.yaml
              fit: BoxFit.cover,
            ),
          ),
          // Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05, // 5% of screen width
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Center(
                        child: Text(
                          "Admin Signup",
                          style: TextStyle(
                            fontSize: screenHeight * 0.04, // 4% of screen height
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03), // 3% of screen height

                      // Name Field
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02), // 2% of screen height

                      // Admin ID Field
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Admin ID",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02), // 2% of screen height

                      // Password Field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02), // 2% of screen height

                      // Confirm Password Field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04), // 4% of screen height

                      // Signup Button
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle signup logic
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF4A3A), // Premium button color
                            padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02, // 2% of screen height
                              horizontal: screenWidth * 0.2, // 20% of screen width
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: screenHeight * 0.025, // 2.5% of screen height
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02), // 2% of screen height
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}