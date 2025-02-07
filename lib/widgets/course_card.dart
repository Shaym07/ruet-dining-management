import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isEnrolled;

  const CourseCard({
    super.key,
    required this.title,
    required this.description,
    required this.isEnrolled,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: ElevatedButton(
          onPressed: () {
            // Handle enroll or view course
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isEnrolled ? Colors.green : Colors.blue,
          ),
          child: Text(isEnrolled ? "Enrolled" : "Enroll"),
        ),
      ),
    );
  }
}