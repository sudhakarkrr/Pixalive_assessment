import 'package:flutter/material.dart';

class RewardifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              SizedBox(height: 16),

              // Title
              Text(
                'Get started with',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'REWARDIFY',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,

                ),
              ),
              
              SizedBox(height: 20),
              // Input Field
              
              Text("Enter yout mobile number or \n     Shop ID to get started"),
              Container(
                height: 50,width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()

                ),
                child: TextField(
                  decoration: InputDecoration(
border: InputBorder.none,
                    labelText: 'Enter Shop ID / Mobile Number',

                  ),
                ),
              ),
              SizedBox(height: 20),
              // Send OTP Button
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Terms and Conditions
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
    );
  }
}
