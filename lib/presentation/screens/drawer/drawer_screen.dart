// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yeteamboxd/constants/constant.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constant.kMainColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/drawer.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/Banner.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: const [
                          Text('Kyran',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Constant.kSecondColor)),
                          SizedBox(height: 5),
                          Text(
                            '@kyran',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                //  fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Constant.kSecondColor,
                            width: 1,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '500 Followers',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Constant.kSecondColor,
                            width: 1,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '420 Followings ',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: const Icon(Icons.home, color: Constant.kSecondColor),
                title: const Text('Home',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: Icon(Icons.movie_outlined,
                    color:
                        pressAttention ? Constant.kSecondColor : Colors.grey),
                title: Text('Films',
                    style: TextStyle(
                        color: pressAttention
                            ? Constant.kSecondColor
                            : Colors.grey)),
                onTap: () {
                  setState(() {
                    pressAttention = !pressAttention;
                  });

                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: const Icon(Icons.calendar_month,
                    color: Constant.kSecondColor),
                title: const Text('Diary',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: const Icon(Icons.book_rounded,
                    color: Constant.kSecondColor),
                title: const Text('Reviews',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: const Icon(Icons.list_alt_sharp,
                    color: Constant.kSecondColor),
                title: const Text('Watchlist',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: const Icon(Icons.list, color: Constant.kSecondColor),
                title: const Text('List',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading:
                    const Icon(Icons.exit_to_app, color: Constant.kSecondColor),
                title: const Text('Logout',
                    style: TextStyle(color: Constant.kSecondColor)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
