// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/widgets/divider_widget.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  int _selectedTabbar = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.kMainColor,
      appBar: AppBar(
        backgroundColor: Constant.kMainColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .024),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140 / 1.3,
                    height: 206 / 1.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://imdb-api.com/images/original/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_Ratio0.6751_AL_.jpg',
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * .05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * .01),
                      Text(
                        "The Batman",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        "DIRECTED BY",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Constant.kSecondColor,
                        ),
                      ),
                      SizedBox(height: size.height * .005),
                      Text(
                        "Matt Reeves",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Constant.kSecondColor,
                        ),
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        "2022  176 mins",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Constant.kSecondColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * .02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Constant.kSecondColor,
                ),
              ),
            ),
            SizedBox(height: size.height * .02),
            const DividerWidget(),
            SizedBox(height: size.height * 0.15),
            const DividerWidget(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStaticWidget(
                    size,
                    'Members',
                    '48k',
                    Icons.remove_red_eye,
                    Colors.green[700],
                  ),
                  buildStaticWidget(
                    size,
                    'Reviews',
                    '23k',
                    Icons.reviews_outlined,
                    Colors.grey[700],
                  ),
                  buildStaticWidget(
                    size,
                    'Lists',
                    '9.5k',
                    Icons.remove_red_eye,
                    Colors.lightBlue[700],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white.withOpacity(.19),
              height: 1,
              width: size.width,
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedTabbar = index;
                      });
                    },
                    isScrollable: true,
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    tabs: const [
                      Tab(
                        text: "Cast",
                      ),
                      Tab(
                        text: "Details",
                      ),
                      Tab(
                        text: "Genre",
                      ),
                    ],
                  ),
                  DividerWidget(),
                  Builder(builder: (_) {
                    switch (_selectedTabbar) {
                      case 0:
                        return SizedBox(
                          height: 140,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: index == 0
                                      ? EdgeInsets.symmetric(
                                          horizontal: 20,
                                        )
                                      : EdgeInsets.only(
                                          right: 20,
                                        ),
                                  width: index == 0 ? 105 : 85,
                                  child: SizedBox(
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Container(height: 10),
                                        CircleAvatar(
                                          radius: 35,
                                          backgroundImage: NetworkImage(
                                            "https://imdb-api.com/images/original/MV5BNzk0MDQ5OTUxMV5BMl5BanBnXkFtZTcwMDM5ODk5Mg@@._V1_Ratio1.0000_AL_.jpg",
                                          ),
                                        ),
                                        Container(height: 3),
                                        Text(
                                          "Robert Pattison",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[400]),
                                        ),
                                        Container(height: 3),
                                        Center(
                                          child: Text(
                                            "Batman / Bruce Wayne",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Constant.kSecondColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      case 1:
                        return Text("Details");
                      case 2:
                        return Text("Genre");
                      default:
                        return Text("error");
                    }
                  }),
                ],
              ),
            ),
            SizedBox(height: size.height * .02),
            DividerWidget(),
            SizedBox(height: size.height * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            // SizedBox(height: size.height * .02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage('https://reqres.in/img/faces/8-image.jpg'),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: size.width - 90,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Matt Reeves",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow[700],
                            ),
                            SizedBox(width: 3),
                            Text(
                              '9/10',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at imperdiet turpis. Vivamus tempor ligula ipsum, id ornare lorem lacinia efficitur. Aenean vel molestie massa. Vestibulum arcu purus, porttitor eget lorem non, bibendum euismod mi. Cras nisl turpis, sollicitudin nec pellentesque eget, porta eget lectus",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          color: Colors.white.withOpacity(.19),
                          height: 1,
                          width: double.infinity,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildStaticWidget(
    Size size,
    String title,
    String number,
    IconData icon,
    Color? color,
  ) {
    return Container(
      width: size.width * .29,
      height: size.height * .11,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: size.height * 0.037,
          ),
          SizedBox(height: size.height * .007),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: size.height * .005),
          Text(
            number,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
