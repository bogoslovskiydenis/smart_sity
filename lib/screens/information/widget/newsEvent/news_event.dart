import 'package:flutter/material.dart';

class NewsEvent extends StatelessWidget {
  const NewsEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 500,
      width: 390,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("News and Events"),
          Text("31 May 2023"),
          Container(
            width: 342,
            height: 180,
            child: Image.asset("assets/news1.png"),
          ),
          Text(
            "Ashkelon park renovation to unveil Israel’s "
                "largest Roman basilica to public.",
            maxLines: 2,
            textDirection: TextDirection.ltr,
          ),
          Text(
              "After years of excavation in Tel "
                  "Ashkelon National Park, archeologists plan "
                  "to restore some of the massive marble columns and statues,"
                  " build 2 kilometers of… read more")
        ],
      ),
    );
  }
}
