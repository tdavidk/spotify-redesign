import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/utils/context_extension.dart';

import '../../models/music.dart';
import '../../res/media_res.dart';

class MusicPlayerDetailPage extends StatelessWidget {
  final Music music;
  const MusicPlayerDetailPage({super.key, required this.music});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: 42,
                          height: 42,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colours.black.withOpacity(0.04),
                          ),
                          child: Image.asset(
                            MediaRes.iconBackButton,
                          ),
                        ),
                      ),
                      const Text(
                        'Now Playing',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colours.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 42,
                          height: 42,
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            MediaRes.iconTriDotVertical,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          music.media ?? MediaRes.home1Image,
                          width: context.width,
                          height: 370,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 17),
                      Text(
                        music.title ?? '',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colours.black,
                        ),
                      ),
                      Text(
                        music.singer ?? '',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colours.black5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Image.asset(
                    MediaRes.iconLinearProgress,
                    width: context.width,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2:25',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colours.black5,
                        ),
                      ),
                      Text(
                        '4:02',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colours.black5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  MediaRes.iconRepeat,
                  width: 24,
                ),
                const SizedBox(width: 29),
                Image.asset(
                  MediaRes.iconPrevious,
                  width: 26,
                ),
                const SizedBox(width: 16),
                Container(
                  width: 72,
                  height: 72,
                  padding: const EdgeInsets.all(22),
                  decoration: const BoxDecoration(
                    color: Colours.green,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    MediaRes.iconPause,
                  ),
                ),
                const SizedBox(width: 16),
                Image.asset(
                  MediaRes.iconNext,
                  width: 26,
                ),
                const SizedBox(width: 29),
                Image.asset(
                  MediaRes.iconShuffle,
                  width: 24,
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_up_rounded),
                  Text(
                    'Lyrics',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.black5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
