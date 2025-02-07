import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const StudentDashboard(),
    );
  }
}

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6EC), // Light orange background
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.03,
                horizontal: screenWidth * 0.05,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFEF6C00), Color(0xFFFFA726)], // Gradient for premium look
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: screenHeight * 0.05,
                    backgroundImage: const AssetImage('assets/images/image3.jpeg'), // Profile picture
                  ),
                  const SizedBox(width: 15),
                  // Greeting Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: screenHeight * 0.025,
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        "Shaym Imran", // Replace with dynamic name
                        style: TextStyle(
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Options Section
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 items per row
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                children: [
                  _buildOptionCard(
                    context,
                    "Booking",
                    Icons.calendar_today_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Navigate to Booking Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Payment",
                    Icons.payment_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Navigate to Payment Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "History",
                    Icons.history_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Navigate to History Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Notification",
                    Icons.notifications_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Navigate to Notification Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Complaint",
                    Icons.report_problem_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Navigate to Complaint Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Logout",
                    Icons.logout_outlined,
                    const Color(0xFFEF6C00), // Dark orange
                        () {
                      // Handle Logout
                      Navigator.pop(context); // Navigate back to login
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFEF6C00),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  // Widget for Option Card
  Widget _buildOptionCard(
      BuildContext context,
      String title,
      IconData icon,
      Color color,
      VoidCallback onTap,
      ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50, // Adjust size as needed
              color: color,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16, // Slightly larger font size
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color(0xFFEF6C00),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/image3.jpeg'), // Profile picture
            ),
            const SizedBox(height: 20),
            const Text(
              "Shaym Imran",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Student",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Settings Page
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFFEF6C00),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text("Change Password"),
          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text("Notification Settings"),
          ),
          ListTile(
            leading: Icon(Icons.language_outlined),
            title: Text("Language"),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About"),
          ),
        ],
      ),
    );
  }
}