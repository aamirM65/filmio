import 'package:filmio/pages/movie_screen.dart';
import 'package:filmio/pages/tv_show_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return const MobilePage();
      } else {
        return const WebPage();
      }
    });
  }
}

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Filmio',
          style: TextStyle(fontFamily: 'Oswald', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueAccent.shade700,
            Colors.cyan,
          ], begin: Alignment.topLeft, end: Alignment.center)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueAccent.shade700, Colors.cyan],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Find Your Favorite Movies & TV Shows Here',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Explore Now.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Montserrat'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.indigoAccent.shade100,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.blueAccent.shade700,
                      Colors.cyan,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                indicatorPadding: const EdgeInsets.symmetric(vertical: 8.0),
                tabs: const [
                  Tab(
                    text: 'Movie',
                  ),
                  Tab(
                    text: 'Tv Show',
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    MovieScreen(
                      gridCount: 2,
                    ),
                    TvShowScreen(
                      gridCount: 2,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Filmio',
          style: TextStyle(
              fontSize: 24, fontFamily: 'Oswald', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueAccent.shade700,
            Colors.cyan,
          ], begin: Alignment.topLeft, end: Alignment.center)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade800,
              ),
              indicatorPadding: const EdgeInsets.symmetric(vertical: 12.0),
              tabs: const [
                Tab(
                  child: Text(
                    'Movie',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'TvShow',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueAccent.shade700, Colors.cyan],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.only(left: 42.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      'Hello,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Find Your Favorite Movies & TV Shows Here. Explore Now.',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    MovieScreen(
                      gridCount: 4,
                    ),
                    TvShowScreen(
                      gridCount: 4,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
