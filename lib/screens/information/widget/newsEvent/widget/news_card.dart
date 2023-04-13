import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {Key? key,
      required this.dataText,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final String dataText;
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const  Text("News and Events" , style:  TextStyle(fontSize: 24, fontWeight: FontWeight.normal),),
          const SizedBox(height: 20,),
          Text(dataText),
          const SizedBox(height: 15,),
          SizedBox(
            width: 350,
            height: 180,
            child: Column(
              children: [Image.asset(image)],
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            title,
            maxLines: 2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 15,),
          Text(description ,style: Theme.of(context).textTheme.headline4,),
        ],
      ),
    );
  }
}
