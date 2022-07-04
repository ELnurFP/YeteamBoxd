import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({super.key, required this.posterUrl});
  final String posterUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140 / 1.8,
      height: 206 / 1.8,
      decoration: BoxDecoration(
        image:
            DecorationImage(fit: BoxFit.cover, image: NetworkImage(posterUrl)),
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    );
  }
}
