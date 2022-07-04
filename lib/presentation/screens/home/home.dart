import 'package:flutter/material.dart';
import 'package:yeteamboxd/constants/constant.dart';
import 'package:yeteamboxd/presentation/screens/drawer/drawer_screen.dart';
import 'package:yeteamboxd/presentation/screens/home/homepage.dart';
import 'package:yeteamboxd/presentation/screens/profile/profile_screen.dart';

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
    ProfileScreen(),
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
          unselectedItemColor: Colors.white.withOpacity(.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.reviews),
              label: 'Reviews',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
