import 'package:flutter/material.dart';
import '../widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, Misa!"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Promotion",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "3D DESIGN BASICS",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Courses",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  CourseCard(
                    title: "Graphic Design Basics",
                    description: "16 Lessons (12 Hours)",
                    isEnrolled: true,
                  ),
                  CourseCard(
                    title: "HTML & CSS",
                    description: "20 Lessons (15 Hours)",
                    isEnrolled: false,
                  ),
                  CourseCard(
                    title: "Flutter Development",
                    description: "25 Lessons (20 Hours)",
                    isEnrolled: true,
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