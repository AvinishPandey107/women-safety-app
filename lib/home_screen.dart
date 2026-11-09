import 'dart:math';

import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/LiveSafe.dart';
import 'package:women_safety_app/widgets/home_widgets/custom_appbar.dart';
import 'package:women_safety_app/widgets/home_widgets/emergency.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  int qIndex = 0;

  getRandomQuote() {
    Random random = Random();
    setState(() {
      qIndex = random.nextInt(7);
    });
  }

  @override
  void initState() {
    getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppbar(
                quoteIndex: qIndex, 
                onTap: 
                getRandomQuote
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "EMERGENCY",
                        style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w100)
                        ),
                    ),
                    Emergency(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Explore LiveSafe",
                        style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w100)
                        ),
                    ),
                    LiveSafe(),
                  ],
                )
                )
            ],
          ),
        ),
      ),
    );
  }
}
