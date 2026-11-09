import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class FireBrigadeEmergency extends StatelessWidget {
  const FireBrigadeEmergency({super.key});

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
          onTap: () => _callNumber('101'),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 154, 52, 18),
                  Color.fromARGB(255, 234, 88, 12),
                  Color.fromARGB(255, 251, 191, 36),
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
                      "assets/3d-cartoon-fire-flame-icon_84443-57165-removebg-preview.png",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fire Brigade Emergency',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width*0.05,
                        ),
                        ),
                        Text(
                          'In case of FIRE call',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 237, 213),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width*0.04,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 237, 213),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              '1-0-1',
                              style: TextStyle(
                              color: const Color.fromARGB(255, 154, 52, 18),
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
