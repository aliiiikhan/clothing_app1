import 'package:flutter/material.dart';
import 'onboarding_screen3.dart'; // Import the third screen

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Handle skip action
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.brown),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/onboard2.jpg', // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Wishlist: Where Fashion Dreams Begin',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                SizedBox(width: 8),
                CircleAvatar(radius: 4, backgroundColor: Colors.brown),
                SizedBox(width: 8),
                CircleAvatar(radius: 4, backgroundColor: Colors.grey),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    // Navigate back to the previous onboarding screen
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    // Navigate to the next onboarding screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnboardingScreen3()),
                    );
                  },
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
