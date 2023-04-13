import 'package:flutter/material.dart';
import 'package:smart_sity/screens/information/widget/reviews/widget/review_widget.dart';

import '../info_buttons.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 500,
      width: 390,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  "Reviews",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          const ReviewsCard(
            image: AssetImage(
              "assets/news1.png",
            ),
            textData: '3 months ago',
            textReview:
                'Great view right next to the seashore. Nice walking path that young kids can do as well. Family friendly and BBQ friendly. Not easy to find water machine though.',
          ),
          const SizedBox(
            height: 20,
          ),
          const ReviewsCard(
            image: AssetImage("assets/news2.png"),
            textData: '6 months ago',
            textReview:
                'A nice space for hitting the beach or walking trails. If you’re into archeology there is 4,000 years of history here and some pretty impressive reconstructions… read more',
          ),
          const SizedBox(
            height: 20,
          ),
          const ReviewsCard(
            image: AssetImage("assets/news3.png"),
            textData: 'a year ago',
            textReview:
                'So many memories with my family and grandmother in this place. Beautiful to spend a few hours to walk around, take pictures and then head to the beach after.',
          ),
          const SizedBox(
            height: 20,
          ),
          const ReviewsCard(
            image: AssetImage("assets/news2.png"),
            textData: 'a year ago',
            textReview:
                'Spent about 90 mins to see around. Beautiful and peaceful place.',
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: InfoButton(
              text: 'Load more',
              textColor: Colors.black, image: '',
            ),
          ),
        ],
      ),
    );
  }
}
