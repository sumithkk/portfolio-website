import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final int index;
  const ProjectCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            'Project ${index + 1}',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
