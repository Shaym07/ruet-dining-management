import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2EE), // Light beige background color
      body: Column(
        children: [
          // Top Image Section
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/image2.jpg", // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Overlay Text
                Positioned(
                  bottom: 40,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dining",
                        style: TextStyle(
                          fontSize: 36, // Larger font size for premium look
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2, // Slight letter spacing for elegance
                        ),
                      ),
                      Text(
                        "Management.",
                        style: TextStyle(
                          fontSize: 36, // Larger font size for premium look
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Dining Management System is a modern solution designed to simplify hall management.",
                        style: TextStyle(
                          fontSize: 18, // Slightly larger font for readability
                          color: Colors.white,
                          height: 1.6, // Line height for better spacing
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom Button Section
          Expanded(
            flex: 1,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to HomeScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4A3A), // Premium red button color
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 100), // Larger padding for premium look
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  elevation: 8, // Add shadow for a premium feel
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20, // Larger font size for button text
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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