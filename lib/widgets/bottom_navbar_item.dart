import 'package:flutter/material.dart';
import 'package:stay_cozy/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem(
      {super.key, required this.imageUrl, required this.isActive});

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
