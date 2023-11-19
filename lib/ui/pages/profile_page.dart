import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';

import '../../models/music.dart';
import '../widgets/public_playlist.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colours.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(43),
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
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colours.blackLight,
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
                  Container(
                    width: 93,
                    height: 93,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colours.background,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          MediaRes.profileImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'davsolutionid@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colours.black2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'David Kurniawan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colours.black2,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '778',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colours.black2,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colours.black2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 99,
                      ),
                      Column(
                        children: [
                          Text(
                            '245',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colours.black2,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colours.black2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 19),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Public playlists',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colours.black2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Column(
                    children: List.generate(
                      publicPlaylist.length,
                      (index) => PublicPlaylist(
                        publicPlaylist: publicPlaylist[index],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
