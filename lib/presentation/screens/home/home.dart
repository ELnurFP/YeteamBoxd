import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/screens/drawer/drawer_screen.dart';
import 'package:yeteamboxd/presentation/screens/home/homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  static const List<Widget> _pages = [
    HomePage(),
    Center(child: Text('Reviews')),
    Center(child: Text('Notifications')),
    Center(child: Text('Profile')),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Constant.kMainColor,
      drawer: const MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          backgroundColor: Constant.kMainColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: Constant.kSecondColor,
          unselectedItemColor: Constant.kSecondColor,

          //  unselectedItemColor: Colors.white.withOpacity(.5),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/compas.svg'),
              label: 'Reviews',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/notification.svg'),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/user.svg'),
              label: 'Profile',
            ),
          ]),
    );
  }
}
