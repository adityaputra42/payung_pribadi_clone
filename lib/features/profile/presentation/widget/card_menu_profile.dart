import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../../../../core/theme/app_font.dart';

class CardMenuProfile extends StatelessWidget {
  const CardMenuProfile(
      {super.key, required this.icon, this.onTap, required this.title});
  final String icon;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).cardColor),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).canvasColor),
              child: Center(
                child: Iconify(
                  icon,
                  size: 20,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            width(12),
            Expanded(
                child: Text(
              title,
              style: AppFont.medium16
                  .copyWith(color: Theme.of(context).indicatorColor),
            ))
          ],
        ),
      ),
    );
  }
}
