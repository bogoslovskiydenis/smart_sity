import 'package:equatable/equatable.dart';

class Reviews extends Equatable {
  final int id;
  final String name;
  final List<String> imageUrls;
  final String description;

  const Reviews({
    required this.description,
    required this.id,
    required this.name,
    required this.imageUrls,
  });

  @override
  List<Object?> get props => [id, name, imageUrls, description];

  static List<Reviews> users = [
    Reviews(
      id: 1,
      name: 'David',
      imageUrls: [
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      ],
      description:
      'Great view right next to the seashore. Nice walking path that young kids can do as well. Family friendly and BBQ friendly. Not easy to find water machine though.',
    ),
    Reviews(
      id: 2,
      name: 'Saba',
      imageUrls: [
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      ],
      description:
      'A nice space for hitting the beach or walking trails. If you’re into archeology there is 4,000 years of history here and some pretty impressive reconstructions… read more',
    ),
    Reviews(
      id: 3,
      name: 'Peter',
      imageUrls: [
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      ],
      description:
      'So many memories with my family and grandmother in this place. Beautiful to spend a few hours to walk around, take pictures and then head to the beach after.',
    ),
    Reviews(
      id: 3,
      name: 'Peter',
      imageUrls: [
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      ],
      description:
      'Spent about 90 mins to see around. Beautiful and peaceful place.',
    ),
  ];
}
