import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/Emergencies/AmbulanceEmergency.dart';
import 'package:women_safety_app/widgets/home_widgets/Emergencies/ArmyEmergency.dart';
import 'package:women_safety_app/widgets/home_widgets/Emergencies/FireBrigadeEmergency.dart';
import 'package:women_safety_app/widgets/home_widgets/Emergencies/ActiveEmergency.dart' show PoliceEmergency, ActiveEmergency;

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          ActiveEmergency(),
          AmbulanceEmergency(),
          FireBrigadeEmergency(),
          ArmyEmergency(),
        ],
      ),
    );
  }
}