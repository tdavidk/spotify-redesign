import 'package:flutter/material.dart';
import 'package:spotify/models/music.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/ui/pages/music_player_detail_page.dart';
import 'package:spotify/ui/widgets/home_category.dart';
import 'package:spotify/utils/context_extension.dart';

import '../widgets/home_music_category.dart';
import '../widgets/playlist_music.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categoryList = ['News', 'Video', 'Artist', 'Podcast'];

  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      MediaRes.iconSearch,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    MediaRes.iconLogo,
                    width: 108,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.all(2),
                    child: Image.asset(
                      MediaRes.iconTriDotVertical,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Image.asset(
              MediaRes.bannerImage,
              width: context.width,
            ),
          ),
          const SizedBox(height: 41),
          SizedBox(
            height: 36,
            child: ListView.builder(
              itemCount: categoryList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    index == 0 ? const SizedBox(width: 34) : const SizedBox(),
                    HomeCategory(
                      onTap: () {
                        setState(() {
                          selectedCategory = index;
                        });
                      },
                      title: categoryList[index],
                      isSelected: selectedCategory == index,
                    ),
                    categoryList.length - 1 == index
                        ? const SizedBox(width: 34)
                        : const SizedBox(width: 40),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: homeNewsList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    index == 0 ? const SizedBox(width: 28) : const SizedBox(),
                    HomeMusicCategory(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MusicPlayerDetailPage(
                              music: homeNewsList[index],
                            ),
                          ),
                        );
                      },
                      music: homeNewsList[index],
                    ),
                    homeNewsList.length - 1 == index
                        ? const SizedBox(width: 28)
                        : const SizedBox(width: 14),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Playlist',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colours.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homePlaylistList.length,
                  itemBuilder: (context, index) {
                    return PlaylistMusic(
                      title: homePlaylistList[index].title ?? '',
                      singer: homePlaylistList[index].singer ?? '',
                      duration: homePlaylistList[index].duration ?? '',
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
