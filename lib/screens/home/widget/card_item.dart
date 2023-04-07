import 'package:flutter/material.dart';

import 'button.dart';
import 'dots.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {Key? key, this.value = 0, required this.text, required this.imagePath})
      : super(key: key);
  final int value;
  final String text;
  final String imagePath;
  final int page = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 451,
          width: 358,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(imagePath),
              ),
              const Dots(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      children: [
                        Text(
                          "Ashkelon National Park",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          text,
                          maxLines: 4,
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < value ? Icons.star : Icons.star_border,
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 10),
                  const CustomElevatedButton(
                    text: 'View',
                    textColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
