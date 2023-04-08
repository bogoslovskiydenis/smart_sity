import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (index) => const Icon(
            Icons.star_border,
            size: 12,
          ),
        ),
    );
  }
}
