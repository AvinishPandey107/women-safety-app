import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class AmbulanceEmergency extends StatelessWidget {
  const AmbulanceEmergency({super.key});

  _callNumber(String number) async{
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 5),
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () => _callNumber('102'),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 96, 100),
                  Color.fromARGB(255, 0, 151, 167),
                  Color.fromARGB(255, 77, 208, 225),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color.fromARGB(40, 255, 255, 255).withOpacity(0.1),
                    child: Image.asset(
                      "assets/bright-pink-ambulance-cartoon-icon-symbol-star-life-emergency-medical-vehicle-vibrant-representing-services-412209500-removebg-preview.png",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ambulance Emergency',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.05,
                        ),
                        ),
                        Text(
                          'AMBULANCE',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 207, 250, 254),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width*0.04,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 207, 250, 254),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              '1-0-2',
                              style: TextStyle(
                              color: const Color.fromARGB(255, 0, 96, 100),
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
        ),
      ),
    );
  }
}
