import 'package:flutter/material.dart';
import 'package:spotify/utils/context_extension.dart';

import '../../res/colours.dart';
import '../../res/media_res.dart';

class PlaylistMusic extends StatelessWidget {
  final String title;
  final String singer;
  final String duration;

  const PlaylistMusic({
    super.key,
    required this.title,
    required this.singer,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 37,
                height: 37,
                padding: const EdgeInsets.all(11),
                decoration: const BoxDecoration(
                  color: Colours.grey5,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(MediaRes.iconPlay),
              ),
              const SizedBox(width: 24),
              SizedBox(
                width: context.width * 0.48,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
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
                      singer,
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
                duration,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colours.black,
                ),
              ),
              const SizedBox(width: 24),
              Image.asset(
                MediaRes.iconFavFill,
                width: 21,
                height: 21,
                color: Colours.grey6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
