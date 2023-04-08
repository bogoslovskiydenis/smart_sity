import 'package:flutter/material.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({Key? key, required this.image}) : super(key: key);
final AssetImage image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                image: image,
              )
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.orange,
              )
            ],
          ),
        )
      ],
    );
  }
}
