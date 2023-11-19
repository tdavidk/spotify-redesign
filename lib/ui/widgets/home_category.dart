import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';

class HomeCategory extends StatelessWidget {
  final String? title;
  final bool isSelected;
  final VoidCallback? onTap;
  const HomeCategory({
    super.key,
    this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            title ?? '',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colours.black : Colours.grey4,
            ),
          ),
          if (isSelected)
            Container(
              width: 26,
              height: 3,
              decoration: const BoxDecoration(
                color: Colours.green,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(3.5),
                ),
              ),
            )
        ],
      ),
    );
  }
}
