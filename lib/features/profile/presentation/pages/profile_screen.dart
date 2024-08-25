import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/icons/bx.dart';
import 'package:iconify_flutter_plus/icons/ep.dart';
import 'package:iconify_flutter_plus/icons/material_symbols.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:iconify_flutter_plus/icons/ph.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';
import 'package:payung_pribadi_clone/core/utils/widget_helper.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/widget/pop_up_select_image.dart';

import '../../../../core/staticImage/app_image.dart';
import '../widget/card_menu_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetHelper.appBar(context: context, title: 'Profile'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            height(16),
            Row(
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Stack(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).hintColor),
                        child: SvgPicture.asset(
                          AppImage.noPict,
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const PopUpSelectImage());
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).canvasColor),
                            child: Center(
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Theme.of(context).hintColor,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                width(16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: AppFont.semibold18
                          .copyWith(color: Theme.of(context).indicatorColor),
                    ),
                    Text(
                      "Masuk dengan Google",
                      style: AppFont.reguler14
                          .copyWith(color: Theme.of(context).indicatorColor),
                    )
                  ],
                ))
              ],
            ),
            height(36),
            CardMenuProfile(
              icon: Mdi.person_outline,
              title: 'Informasi Pribadi',
              onTap: () {
                context.goNamed("informasi_pribadi");
              },
            ),
            height(16),
            CardMenuProfile(
              icon: Mdi.paper_outline,
              title: 'Syarat & Ketentuan',
              onTap: () {},
            ),
            height(16),
            CardMenuProfile(
              icon: Ep.chat_line_round,
              title: 'Bantuan',
              onTap: () {},
            ),
            height(16),
            CardMenuProfile(
              icon: Bx.check_shield,
              title: 'Kebijakan Privasi',
              onTap: () {},
            ),
            height(16),
            CardMenuProfile(
              icon: Ph.power,
              title: 'Log Out',
              onTap: () {},
            ),
            height(16),
            CardMenuProfile(
              icon: MaterialSymbols.delete_outline,
              title: 'Hapus Akun',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
