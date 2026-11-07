import 'package:flutter/material.dart';

class PoliceEmergency extends StatelessWidget {
  const PoliceEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 5),
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 241, 181, 181),
                Color.fromARGB(255, 205, 107, 102),
                Color.fromARGB(255, 224, 177, 82),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white.withOpacity(0.1),
                child: Image.asset(
                  "assets/cartoon-emergency-siren-icon-graphic-alert-beacon-for-medical-and-fire-services-vector-removebg-preview.png",
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Active Emergency',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.05,
                    ),
                    ),
                    Text(
                      'Call 0-1-5 for Emergencies',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width*0.04,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                          '0-1-5',
                          style: TextStyle(
                          color: const Color.fromARGB(255, 178, 92, 86),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.07,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
