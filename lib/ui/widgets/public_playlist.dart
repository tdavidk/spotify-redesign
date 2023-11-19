import 'package:flutter/material.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/utils/context_extension.dart';

import '../../models/music.dart';
import '../../res/colours.dart';

class PublicPlaylist extends StatelessWidget {
  final Music publicPlaylist;
  const PublicPlaylist({super.key, required this.publicPlaylist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 58,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.asset(publicPlaylist.media ?? ''),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: context.width * 0.40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      publicPlaylist.title ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colours.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      publicPlaylist.singer ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colours.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                publicPlaylist.duration ?? '',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colours.black,
                ),
              ),
              const SizedBox(width: 24),
              Image.asset(
                MediaRes.iconTriDotHorizontal,
                width: 18,
                color: Colours.grey6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
