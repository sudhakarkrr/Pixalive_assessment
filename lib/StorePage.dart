import 'package:flutter/material.dart';


class NoStoresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Illustration (replace with your asset)
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.store, // Replace with your asset or SVG image
                  color: Colors.green,
                  size: 60,
                ),
              ),
              SizedBox(height: 20),
              // Title
              Text(
                'No stores are linked to this account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Subtitle
              Text(
                'Enter your account details correctly or register your store with us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              // Register Button
              ElevatedButton(
                onPressed: () {
                  // Handle registration action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Register your store with us',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 10),
              // Login Button
              OutlinedButton(
                onPressed: () {
                  // Handle login action
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green), // Border color
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Login with different account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
