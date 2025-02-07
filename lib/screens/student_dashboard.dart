import 'package:flutter/material.dart';

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
                color: Color(0xFFFFA726), // Premium orange header background
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Section
                  Row(
                    children: [
                      // Profile Picture
                      CircleAvatar(
                        radius: screenHeight * 0.04, // Dynamic size
                        backgroundImage: AssetImage('assets/images/image3.jpeg'), // Replace with your image
                      ),
                      const SizedBox(width: 10),
                      // Name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shaym Imran", // Replace with dynamic name
                            style: TextStyle(
                              fontSize: screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Student",
                            style: TextStyle(
                              fontSize: screenHeight * 0.018,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Stats Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatCard("Booking", "10", screenHeight),
                      _buildStatCard("Payment", "\$32", screenHeight),
                      _buildStatCard("History", "5", screenHeight),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Options Section
            Expanded(
              child: GridView.count(
                crossAxisCount: 3, // 3 items per row
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                children: [
                  _buildOptionCard(
                    context,
                    "Booking",
                    Icons.calendar_today_outlined,
                    const Color(0xFFFF7043), // Premium orange
                        () {
                      // Navigate to Booking Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Payment",
                    Icons.payment_outlined,
                    const Color(0xFFFF7043), // Premium orange
                        () {
                      // Navigate to Payment Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "History",
                    Icons.history_outlined,
                    const Color(0xFFFF7043), // Premium orange
                        () {
                      // Navigate to History Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Notification",
                    Icons.notifications_outlined,
                    const Color(0xFFFF7043), // Premium orange
                        () {
                      // Navigate to Notification Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Complaint",
                    Icons.report_problem_outlined,
                    const Color(0xFFFF7043), // Premium orange
                        () {
                      // Navigate to Complaint Page
                    },
                  ),
                  _buildOptionCard(
                    context,
                    "Logout",
                    Icons.logout_outlined,
                    const Color(0xFFFF7043), // Premium orange
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
    );
  }

  // Widget for Stats Card
  Widget _buildStatCard(String title, String value, double screenHeight) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
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
            Text(
              value,
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFF7043), // Premium orange
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: screenHeight * 0.018,
                color: Colors.grey,
              ),
            ),
          ],
        ),
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
          borderRadius: BorderRadius.circular(15),
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
              size: 30, // Smaller icon size
              color: color,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14, // Smaller font size
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