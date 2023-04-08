import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (index) => Container(

            child: const Icon(
              Icons.circle,
              size: 6,
            ),
          ),
        ),
      ),
    );
  }
}


