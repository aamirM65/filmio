import 'package:filmio/model/movie_data.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final MovieData movie;
  final VoidCallback? press;

  const ItemCard({Key? key, required this.movie, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Hero(
        tag: movie,
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              movie.imageAsset,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
