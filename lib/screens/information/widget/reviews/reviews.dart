import 'package:flutter/material.dart';
import 'package:smart_sity/screens/information/widget/reviews/review_widget.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

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
            children: [
              Text("Reviews"),
            ],
          ),
          ReviewsCard(image: AssetImage("assets/news1.png",),),
          SizedBox(height: 10,),
          ReviewsCard(image: AssetImage("assets/news2.png"),),
          SizedBox(height: 10,),

          ReviewsCard(image: AssetImage("assets/news3.png")),
          SizedBox(height: 10,),

          ReviewsCard(image: AssetImage("assets/news2.png")),

        ],
      ),
    );
  }
}
