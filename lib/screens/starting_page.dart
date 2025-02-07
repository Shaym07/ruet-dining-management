import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Check the current theme mode (dark or light)
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white, // Dynamic background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the image
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isDarkMode ? Colors.blue : Colors.purple, // Dynamic border color
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "asset/image1.png", // Path to your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Title
            Text(
              "Dining Management",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black, // Dynamic text color
              ),
            ),
            const SizedBox(height: 10),
            // Subtitle
            Text(
              "Effortless meal booking and",
              style: TextStyle(
                fontSize: 16,
                color: isDarkMode ? Colors.grey[400] : Colors.grey[800], // Dynamic subtitle color
              ),
            ),
            const SizedBox(height: 40),
            // Get Started Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen (e.g., Login or Home)
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.purple : Colors.blue, // Dynamic button color
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Get started",
                style: TextStyle(
                  fontSize: 16,
                  color: isDarkMode ? Colors.white : Colors.white, // Button text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}