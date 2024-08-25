import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../../../../core/theme/app_font.dart';

class CardMenuItem extends StatelessWidget {
  const CardMenuItem({super.key, required this.item});
  final Map<String, dynamic> item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          item['image'],
          width: 28,
          height: 28,
        ),
        height(4),
        Text(
          item['label'],
          style: AppFont.medium10
              .copyWith(color: Theme.of(context).indicatorColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
