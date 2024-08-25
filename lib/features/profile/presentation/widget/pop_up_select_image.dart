import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payung_pribadi_clone/core/common/widget/secondary_button.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';
import 'package:payung_pribadi_clone/core/utils/pick_image.dart';

class PopUpSelectImage extends StatelessWidget {
  const PopUpSelectImage({
    super.key,
    this.isAll = false,
    this.orderId,
  });
  final bool isAll;
  final int? orderId;
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return SizedBox(
        width: 900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            cardPilihan(
              context,
              title: "Buka kamera",
              ontap: () {
                pickImage(ImageSource.camera);
              },
            ),
            height(8),
            cardPilihan(
              context,
              title: "Ambil dari galeri",
              ontap: () {
                pickImage(ImageSource.gallery);
              },
            ),
            height(8),
            SecondaryButton(
                bgColor: Theme.of(context).cardColor,
                borderColor: Colors.transparent,
                title: 'Batal',
                onPressed: () {
                  context.pop();
                })
          ],
        ),
      );
    }

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: content(),
      contentPadding: const EdgeInsets.all(16),
    );
  }

  Widget cardPilihan(BuildContext context,
      {Function()? ontap, required String title}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).cardColor),
        child: Text(
          title,
          style: AppFont.medium14
              .copyWith(color: Theme.of(context).indicatorColor),
        ),
      ),
    );
  }
}
