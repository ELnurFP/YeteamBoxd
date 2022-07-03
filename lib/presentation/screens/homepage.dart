// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/screens/drawer/drawer_screen.dart';
import 'package:yeteamboxd/presentation/widgets/poster_widgets.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Constant.kMainColor,
      drawer: const MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constant.kMainColor,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/drawer.svg'),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search_ic.svg',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: RichText(
            text: const TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: 'John Doe',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Constant.kSecondColor,
                  ),
                ),
                TextSpan(
                  text: '!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Review or track film you’ve watched...',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Popular Films This Month',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 206 / 1.5,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 20, right: 10)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: const PosterWidget(
                    posterUrl:
                        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_Ratio0.6800_AL_.jpg"),
              );
            },
          ),
        ),
        const SizedBox(height: 27),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Popular Lists This Month',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 20, right: 10)
                    : const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 140,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Stack(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(left: 36),
                              child: PosterWidget(
                                posterUrl:
                                    'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: PosterWidget(
                                posterUrl:
                                    'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX128_CR0,3,128,176_AL_.jpg',
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: PosterWidget(
                                posterUrl:
                                    'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
                              )),
                          PosterWidget(
                              posterUrl:
                                  "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Life-Changing Movies',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Constant.kSecondColor,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Recent Friends’ Review',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Constant.kSecondColor,
          ),
        ),
      ]),
    );
  }
}
