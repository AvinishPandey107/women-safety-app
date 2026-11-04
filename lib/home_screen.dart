import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          CustomAppbar()
        ],
        ), 
      )
    );
  }
}
