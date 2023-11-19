import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/utils/context_extension.dart';

import '../../models/music.dart';
import '../widgets/artics_album.dart';
import '../widgets/playlist_music.dart';

class ArticsPage extends StatelessWidget {
  const ArticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: context.width,
              height: 280,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MediaRes.favAlbumBannerImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(69),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 42,
                          height: 42,
                        ),
                        const SizedBox(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 42,
                            height: 42,
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              MediaRes.iconTriDotVertical,
                              fit: BoxFit.contain,
                              color: Colours.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Billie Eilish',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colours.black2,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              '2 Album , 67 Track',
              style: TextStyle(
                fontSize: 13,
                color: Colours.black3,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 62),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colours.black2,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 19),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Albums',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colours.black2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: articsAlbumList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          index == 0
                              ? const SizedBox(width: 28)
                              : const SizedBox(),
                          ArticsAlbum(music: articsAlbumList[index]),
                          articsAlbumList.length - 1 == index
                              ? const SizedBox(width: 28)
                              : const SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Songs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colours.black2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 13),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: articsSongList.length,
                        itemBuilder: (context, index) {
                          return PlaylistMusic(
                            title: articsSongList[index].title ?? '',
                            singer: articsSongList[index].singer ?? '',
                            duration: articsSongList[index].duration ?? '',
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
