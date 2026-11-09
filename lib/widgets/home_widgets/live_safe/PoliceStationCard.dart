import 'package:flutter/material.dart';

class PoliceStationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20), // Matches spacing from screen edge
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: 100,
              width: 120,
              child: Center(
                child: Image.asset(
                  'assets/police_station.png',
                  height: 700,
                  width: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Police Station',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}