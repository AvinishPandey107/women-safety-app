import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/live_safe/BusStopCard.dart';
import 'package:women_safety_app/widgets/home_widgets/live_safe/HospitalCard.dart';
import 'package:women_safety_app/widgets/home_widgets/live_safe/PharmacyCard.dart';
import 'package:women_safety_app/widgets/home_widgets/live_safe/PoliceStationCard.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceStationCard(),
          BusStopCard(),
          HospitalCard(),
          Pharmacycard(),
        ],
      ),
    );
  }
}