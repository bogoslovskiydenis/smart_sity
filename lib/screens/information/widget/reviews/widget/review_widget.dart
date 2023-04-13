import 'package:flutter/material.dart';

import '../../stars.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard(
      {Key? key,
      required this.image, this.textData = '',
      required this.textReview})
      : super(key: key);
  final AssetImage image;
  final String textData;
  final String textReview;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 10),
      child: Row(
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
                  )),
            ),
          ),
          Flexible(
            flex: 5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Stars(),
                      Text(
                        textData, maxLines: 1,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    textReview,
                    maxLines: 4,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
