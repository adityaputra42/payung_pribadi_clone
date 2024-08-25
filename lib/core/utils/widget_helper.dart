import 'package:flutter/material.dart';

import '../theme/app_font.dart';

class WidgetHelper {
  static appBar(
      {required BuildContext context,
      Function()? onTap,
      Function()? onTapTitle,
      required String title,
      Widget? icon,
      Widget? iconTitle,
      Color? color,
      double fontSize = 16,
      List<Widget>? actions,
      bool isCanBack = true}) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          isCanBack
              ? InkWell(
                  onTap: onTap ??
                      () {
                        Navigator.pop(context);
                      },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Theme.of(context).indicatorColor,
                    size: 20,
                  ),
                )
              : const SizedBox(
                  width: 36,
                ),
          Expanded(
            child: Text(
              title,
              style: AppFont.semibold16.copyWith(
                  color: Theme.of(context).indicatorColor, fontSize: fontSize),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          icon ??
              const SizedBox(
                width: 36,
              ),
        ],
      ),
      actions: actions,
      automaticallyImplyLeading: false,
      backgroundColor: color ?? Theme.of(context).colorScheme.surface,
      toolbarHeight: 60,
    );
  }
}
