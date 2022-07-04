import 'package:flutter/material.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/widgets/poster_widgets.dart';
import 'package:yeteamboxd/presentation/widgets/profile_static_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> _fav = [
    "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX128_CR0,3,128,176_AL_.jpg",
    'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX128_CR0,3,128,176_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX128_CR0,1,128,176_AL_.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: size.height * .204,
          child: Image.network(
            "https://images.mubicdn.net/images/film/2325/cache-45989-1543575656/image-w1280.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .156,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: Container(
                      color: Constant.kMainColor,
                      width: size.width,
                      height: 36,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 36,
                    backgroundImage:
                        NetworkImage('https://reqres.in/img/faces/8-image.jpg'),
                  ),
                ],
              ),
              Container(
                color: Constant.kMainColor,
                width: size.width,
                child: Column(children: [
                  SizedBox(height: size.height * 0.01),
                  const Text(
                    'Sadiq',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "500 Followers",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: Container(
                              height: 2,
                              width: 49,
                              decoration: BoxDecoration(
                                  color: Constant.kSecondColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * .066,
                      ),
                      Column(
                        children: [
                          const Text(
                            "420 Following",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            child: Container(
                              height: 2,
                              width: 49,
                              decoration: BoxDecoration(
                                  color: Constant.kSecondColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ProfileStaticWidget(
                        color: Constant.kSecondColor,
                        number: 455,
                        title: 'Total Films',
                      ),
                      ProfileStaticWidget(
                        color: Constant.kThirdColor,
                        number: 33,
                        title: 'Film This Year',
                      ),
                      ProfileStaticWidget(
                        color: Constant.kSecondColor,
                        number: 4,
                        title: 'Lists',
                      ),
                      ProfileStaticWidget(
                        color: Constant.kThirdColor,
                        number: 30,
                        title: 'Review',
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  const Text(
                    'Sadiq\'s Favorite Films',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(_fav.length, (index) {
                        return PosterWidget(posterUrl: _fav[index]);
                      })
                    ],
                  ),
                  SizedBox(height: size.height * 0.025),
                  Container(
                    color: Colors.white.withOpacity(.19),
                    height: 1,
                    width: size.width,
                  ),
                  SizedBox(height: size.height * 0.015),
                  const Text(
                    'Sadiq\'s Recent Activity',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(_fav.length, (index) {
                        return Column(
                          children: [
                            PosterWidget(posterUrl: _fav[3 - index]),
                            SizedBox(height: size.height * 0.01),
                            Row(
                              children: const [
                                Text(
                                  "9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 10,
                                )
                              ],
                            )
                          ],
                        );
                      })
                    ],
                  )
                ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
