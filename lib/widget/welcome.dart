import 'package:flutter/material.dart';
import 'package:rent_app/widget/auth/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/rent_logo.png"),
          ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade700),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
