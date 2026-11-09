import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ArmyEmergency extends StatelessWidget {
  const ArmyEmergency({super.key});

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
          onTap: () => _callNumber('100'),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 11, 31, 52),
                  Color.fromARGB(255, 21, 101, 192),
                  Color.fromARGB(255, 66, 165, 245),
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
                    backgroundColor: Colors.white.withOpacity(0.1),
                    child: Image.asset(
                      "assets/soldier-army-with-gun-cartoon-icon-illustration-people-profession-icon-concept-isolated-premium-flat-cartoon-style-vector-removebg-preview.png",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Police Emergency',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.05,
                        ),
                        ),
                        Text(
                          'POLICE',
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
                            color: const Color.fromARGB(255, 219, 234, 245),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              '1-0-0',
                              style: TextStyle(
                              color: const Color.fromARGB(255, 27, 92, 176),
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
