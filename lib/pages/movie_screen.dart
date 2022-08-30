import 'package:filmio/model/movie_data.dart';
import 'package:filmio/pages/detail_screen.dart';
import 'package:filmio/widget/item_card.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  final int gridCount;

  const MovieScreen({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: movieList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => ItemCard(
          movie: movieList[index],
          press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  movie: movieList[index],
                ),
              )),
        ),
      ),
    );
  }
}
