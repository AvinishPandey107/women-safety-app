import 'package:flutter/material.dart';
import 'package:women_safety_app/utils/quotes.dart';

class CustomAppbar extends StatelessWidget {
  // const CustomAppbar({super.key});
  Function? onTap;
  int? quoteIndex;
  CustomAppbar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //make any widget click able
      onTap: () {
        onTap!();
      },
      child: Container(
        child: Text(
          quotes[quoteIndex ?? 0],
          style: const TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}
