import 'package:flutter/material.dart';

import '../../models/music.dart';
import '../../res/colours.dart';

class ArticsAlbum extends StatelessWidget {
  final Music music;
  const ArticsAlbum({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        children: [
          Container(
            width: 140,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(
                  music.media ?? '',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            music.title ?? '',
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colours.black4,
            ),
          ),
        ],
      ),
    );
  }
}
