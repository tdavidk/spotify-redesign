import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';

import '../../models/music.dart';

class HomeMusicCategory extends StatelessWidget {
  final Music music;
  final VoidCallback? onTap;
  const HomeMusicCategory({
    super.key,
    required this.music,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 147,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 198,
              child: Stack(
                children: [
                  Container(
                    height: 185,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                          music.media ?? '',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colours.grey5,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(MediaRes.iconPlay),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              music.title ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colours.black,
              ),
            ),
            Text(
              music.singer ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Colours.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
