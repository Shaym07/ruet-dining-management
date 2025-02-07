import 'package:flutter/material.dart';
import 'admin_signup_page.dart';
import 'student_signup_page.dart';
import 'admin_login_page.dart';
import 'student_login_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Calculate font sizes and padding based on screen height
                final double titleFontSize = constraints.maxHeight * 0.04; // 4% of screen height
                final double subtitleFontSize = constraints.maxHeight * 0.025; // 2.5% of screen height
                final double buttonFontSize = constraints.maxHeight * 0.02; // 2% of screen height
                final double buttonPadding = constraints.maxHeight * 0.015; // 1.5% of screen height

                return Column(
                  children: [
                    // Spacer to push content down
                    const Spacer(flex: 2),

                    // Title Section
                    Text(
                      "Welcome to Dining Management",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: titleFontSize, // Responsive font size
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Choose your role to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: subtitleFontSize, // Responsive font size
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        _showRoleSelectionDialog(context, "Login");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4A3A), // Premium button color
                        padding: EdgeInsets.symmetric(
                          vertical: buttonPadding, // Responsive padding
                          horizontal: constraints.maxWidth * 0.2, // 20% of screen width
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 8, // Add shadow for premium look
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: buttonFontSize, // Responsive font size
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Signup Button
                    ElevatedButton(
                      onPressed: () {
                        _showRoleSelectionDialog(context, "Signup");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4A3A), // Premium button color
                        padding: EdgeInsets.symmetric(
                          vertical: buttonPadding, // Responsive padding
                          horizontal: constraints.maxWidth * 0.2, // 20% of screen width
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 8, // Add shadow for premium look
                      ),
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: buttonFontSize, // Responsive font size
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // Spacer to push content up
                    const Spacer(flex: 3),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Function to show the role selection dialog
  void _showRoleSelectionDialog(BuildContext context, String action) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  blurRadius: 10, // Blur radius
                  spreadRadius: 2, // Spread radius
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Wrap content
              children: [
                // Title
                Text(
                  "$action as",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                // Subtitle
                const Text(
                  "Please select your role:",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                // Admin Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    if (action == "Login") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminLoginPage(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminSignupPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF4A3A), // Premium button color
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Admin",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Student Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    if (action == "Login") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StudentLoginPage(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StudentSignupPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF4A3A), // Premium button color
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Student",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}