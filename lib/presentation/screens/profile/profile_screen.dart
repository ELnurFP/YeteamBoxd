import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        Column(
          children: [
            SizedBox(
              height: size.height * .156,
            ),
            const CircleAvatar(
              radius: 36,
            ),
          ],
        )
      ],
    );
  }
}
