import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';
import 'package:yeteamboxd/constants/constant.dart';
// import 'package:yeteamboxd/models/populyar_movies.dart';
import 'package:yeteamboxd/presentation/screens/movie/movie_screen.dart';
import 'package:yeteamboxd/presentation/widgets/poster_widgets.dart';
import 'package:yeteamboxd/providers/title_from_id.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(populyarMoviesProvider);
    return movies.when(
      data: (movies) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/icons/drawer.svg'),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
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
                ),
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
                    'Review or track film you\'ve watched...',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular Films This Month',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 206 / 1.8,
                  child: ListView.builder(
                    itemCount: movies.items!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(left: 20, right: 10)
                            : const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () => Grock.to(MovieScreen(
                            id: movies.items![index].id!,
                          )),
                          child: PosterWidget(
                            posterUrl: movies.items![index].image!,
                          ),
                        ),
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
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 220,
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
                          height: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 42),
                                    child: PosterWidget(
                                      posterUrl:
                                          'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 28),
                                    child: PosterWidget(
                                      posterUrl:
                                          'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX128_CR0,3,128,176_AL_.jpg',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 14),
                                    child: PosterWidget(
                                      posterUrl:
                                          'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
                                    ),
                                  ),
                                  PosterWidget(
                                    posterUrl:
                                        "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg",
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Life-Changing Movies',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Constant.kSecondColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://reqres.in/img/faces/8-image.jpg'),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Alejandro',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Constant.kSecondColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'New From Friends',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 20, right: 10)
                              : const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const PosterWidget(
                                posterUrl:
                                    "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg",
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 13,
                                    backgroundImage: NetworkImage(
                                        'https://reqres.in/img/faces/8-image.jpg'),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Alejandro',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Constant.kSecondColor,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: const [
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Constant.kSecondColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Icon(Icons.star,
                                              size: 10, color: Colors.yellow),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
      error: (err, s) => Center(child: Text(err.toString())),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
