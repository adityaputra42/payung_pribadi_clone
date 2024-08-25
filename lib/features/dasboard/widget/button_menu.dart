import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../../../core/theme/app_font.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({super.key, required this.item, this.isSelected = false});

  final Map<String, dynamic> item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Iconify(
          item['icon'],
          size: 24,
          color: isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).hintColor,
        ),
        height(4),
        Text(
          item['label'],
          style: AppFont.medium12.copyWith(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).hintColor,
          ),
        )
      ],
    );
  }
}
