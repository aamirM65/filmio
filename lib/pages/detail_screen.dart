import 'package:filmio/model/movie_data.dart';
import 'package:filmio/widget/bookmark_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DetailScreen extends StatelessWidget {
  final MovieData movie;

  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailWebPage(movie: movie);
        } else {
          return DetailMobilePage(movie: movie);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final MovieData movie;

  const DetailMobilePage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomClipPath(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      movie.imageBackground,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const BookmarkButton(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 60, 80, 8),
                          child: Stack(
                            children: [
                              Hero(
                                tag: movie,
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 28,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      movie.imageAsset,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: CircularPercentIndicator(
                                    radius: 25,
                                    percent: (movie.score / 100).toDouble(),
                                    animation: true,
                                    animationDuration: 400,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.blue.shade800,
                                    backgroundColor: Colors.black26,
                                    lineWidth: 5,
                                    center: Text(
                                      "${movie.score}%",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    child: Text(
                      movie.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Rated',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(movie.rated),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Release Date',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              movie.release,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Duration',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              movie.duration,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    'Genre',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    movie.genre,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    'Storyline',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(movie.description)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final MovieData movie;

  const DetailWebPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 16,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey.withOpacity(0.4),
                                    width: 2.0),
                                shape: BoxShape.circle),
                            child: IconButton(
                              iconSize: 12,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Text(
                            movie.title,
                            maxLines: 1,
                            overflow: TextOverflow.visible,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      movie.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey.withOpacity(0.4),
                                    width: 2),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Text(movie.rated),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 6.0,
                            width: 6.0,
                            decoration: const BoxDecoration(
                                color: Colors.blueGrey, shape: BoxShape.circle),
                          ),
                          Text(movie.release),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 6.0,
                            width: 6.0,
                            decoration: const BoxDecoration(
                                color: Colors.blueGrey, shape: BoxShape.circle),
                          ),
                          Text(movie.duration),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(movie.genre),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: BookmarkButton(),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: CircularPercentIndicator(
                              radius: 25,
                              percent: (movie.score / 100).toDouble(),
                              animation: true,
                              animationDuration: 400,
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.blue.shade800,
                              backgroundColor: Colors.black26,
                              lineWidth: 5,
                              center: Text(
                                "${movie.score}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Rating\nScore',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Storyline',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      movie.description,
                    )
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Image.asset(
                  movie.imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff0C1216), Colors.transparent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.5, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
