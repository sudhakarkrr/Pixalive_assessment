import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage("images/Store logo.jpg")),

              // Title
              Text(
                "Grow your Business Exponentially!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),

              // Subtitle
              Text(
                "Pay less on each transaction you make with our App.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 24),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),

              // Contact Us Button
              OutlinedButton(
                onPressed: () {
                  // Handle contact action
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green),
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ),
              SizedBox(height: 16),

              // Terms & Conditions
              Row(
                children: [
                  Text(
                    "   By clicking, you agree to our ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text("Terms & "),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Conditions"),
                  ),
                  SizedBox(width: 5,),
                  Text("and",style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 5,),
                  Text("Privacy Policy.")

                ],
              ),

            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
