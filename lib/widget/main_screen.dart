import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: const Text("RentApp", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(
        child: Text("Welcome to RentApp"),
      ),
    );
  }
}