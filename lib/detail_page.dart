import 'package:flutter/material.dart';

class Pageberita extends StatelessWidget {
  final String title;
  final String image;
  final String caption;
  Pageberita({
    required this.title,
    required this.image,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              caption,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
