import 'package:flutter/material.dart';
import 'package:stay_cozy/model/tips.dart';
import 'package:stay_cozy/theme.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key, required this.tips});

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl!,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title!,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated {tips.updatedAt!}',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
