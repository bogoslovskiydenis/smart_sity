import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 6,),
          Container(
            height: 6,
            width: 6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 6,),
          Container(
            height: 6,
            width: 6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 6,),
          Container(
            height: 6,
            width: 6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
