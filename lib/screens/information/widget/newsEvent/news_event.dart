import 'package:flutter/material.dart';
import 'package:smart_sity/screens/information/widget/newsEvent/widget/news_card.dart';

import '../info_buttons.dart';

class NewsEvent extends StatelessWidget {
  const NewsEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1200,
      width: 390,
      child: Column(
        children: const [
          NewsCard(
            dataText: '31 May 2023',
            image: "assets/news1.png",
            title:
                'Ashkelon park renovation to unveil Israel’s largest Roman basilica to public.',
            description:
                'After years of excavation in Tel Ashkelon National Park, archeologists plan to restore some of the massive marble columns and statues, build 2 kilometers of… read more',
          ),
          SizedBox(
            height: 20,
          ),
          NewsCard(
            dataText: '24 April 2023',
            image: "assets/news2.png",
            title: 'Live Walk in Ashkelon National Park',
            description:
                'I’m inviting you to join the first tour of Ashkelon National Park. In part one, I’m taking you for a walk through the Canaanite City Gate, the most ancient arched gate in the… read more',
          ),
          SizedBox(
            height: 20,
          ),
          NewsCard(
            dataText: '12 April 2023',
            image: "assets/news3.png",
            title: 'Best trails in Ashkelon National Park',
            description:
                'Want to find the best trails in Ashkelon National Park for an adventurous hike or a family trip? AllTrails has 5 great trails for birding, hiking, and walking and more. Enjoy… read more',
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InfoButton(
              text: 'Load more',
              textColor: Colors.black,
            ),
          ),
          SizedBox(height: 20,),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
