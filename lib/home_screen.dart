import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio', style: TextStyle(fontSize: 20.sp)),
        centerTitle: true,
        backgroundColor: Colors.teal, // تغيير لون شريط التطبيق
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: const AssetImage('assets/images.jpg'),
            ),
            SizedBox(height: 20.h),
            Text(
              'Hello, I am Reem ',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'I am a Flutter developer with experience in building responsive applications.\n'
              'I specialize in creating dynamic, cross-platform mobile and web apps.',
              style: TextStyle(fontSize: 16.sp, color: Colors.black87),
            ),
            SizedBox(height: 20.h),
            Text(
              'Skills:',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: const [
                SkillChip(label: 'Flutter'),
                SkillChip(label: 'Dart'),
                SkillChip(label: 'Firebase'),
                SkillChip(label: 'REST APIs'),
                SkillChip(label: 'Git'),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Projects:',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            const ProjectCard(
              title: 'Responsive Portfolio Website',
              description:
                  'A fully responsive portfolio website built with Flutter.',
              backgroundColor: Colors.tealAccent,
              textColor: Colors.black,
            ),
            const ProjectCard(
              title: 'E-Commerce App',
              description:
                  'A cross-platform e-commerce application with Firebase integration.',
              backgroundColor: Colors.lightGreenAccent,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(fontSize: 14.sp, color: Colors.white),
      ),
      backgroundColor: Colors.teal,
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;
  final Color textColor;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              description,
              style: TextStyle(fontSize: 16.sp, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
