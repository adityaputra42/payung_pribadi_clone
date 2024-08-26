import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:intl/intl.dart';
import 'package:payung_pribadi_clone/core/common/widget/primary_button.dart';
import 'package:payung_pribadi_clone/core/staticImage/app_image.dart';
import 'package:payung_pribadi_clone/core/theme/app_color.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../bloc/wellness_bloc.dart';
import '../widget/card_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WellnessBloc, WellnessState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            toolbarHeight: 80,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Malam",
                          style: AppFont.reguler14
                              .copyWith(color: AppColor.darkText1),
                        ),
                        Text(
                          "John Doe",
                          style: AppFont.semibold16
                              .copyWith(color: AppColor.darkText1),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Iconify(
                        Mdi.notifications_none,
                        size: 24,
                        color: AppColor.darkText1,
                      ),
                      width(8),
                      InkWell(
                        onTap: () {
                          context.goNamed('profile');
                        },
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.strokeLight),
                          child: SvgPicture.asset(
                            AppImage.noPict,
                            width: 36,
                            height: 36,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24))),
            child: ListView(
              children: [
                height(24),
                tabBarTypeCustomer(context),
                height(12),
                produkKeuangan(context, state),
                height(16),
                kategoriiPilihan(context, state),
                height(16),
                exploreWellness(context, state)
              ],
            ),
          ),
        );
      },
    );
  }

  Column exploreWellness(BuildContext context, WellnessState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Wellness",
          style: AppFont.semibold16
              .copyWith(color: Theme.of(context).indicatorColor),
        ),
        height(16),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: state.listWellness.length,
            itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        state.listWellness[index]["image"],
                        height: 60,
                      ),
                    ),
                    height(12),
                    Text(
                      "${state.listWellness[index]['label']} ${NumberFormat.currency(locale: 'id_ID', symbol: "Rp. ", decimalDigits: 0).format(state.listWellness[index]['price'])}",
                      style: AppFont.medium14
                          .copyWith(color: Theme.of(context).indicatorColor),
                    ),
                    height(8),
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', symbol: "Rp. ", decimalDigits: 0)
                          .format(state.listWellness[index]['price']),
                      style: AppFont.medium14
                          .copyWith(color: Theme.of(context).indicatorColor),
                    )
                  ],
                ))),
      ],
    );
  }

  Column kategoriiPilihan(BuildContext context, WellnessState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "kategori Pilihan",
          style: AppFont.semibold16
              .copyWith(color: Theme.of(context).indicatorColor),
        ),
        height(16),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.25,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: state.listkategoriPilihan.length,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: CardMenuItem(
                    item: state.listkategoriPilihan[index],
                  ),
                )),
      ],
    );
  }

  Column produkKeuangan(BuildContext context, WellnessState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Produk Keuangan",
          style: AppFont.semibold16
              .copyWith(color: Theme.of(context).indicatorColor),
        ),
        height(16),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.25,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: state.listProdukKeuangan.length,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: CardMenuItem(
                    item: state.listProdukKeuangan[index],
                  ),
                )),
      ],
    );
  }

  Container tabBarTypeCustomer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).canvasColor),
      child: Row(
        children: [
          Expanded(
              child: PrimaryButton(
            title: 'Payung Pribadi',
            onPressed: () {},
            height: 40,
            borderRadius: 20,
          )),
          width(8),
          Expanded(
              child: PrimaryButton(
            title: 'Payung Karyawan',
            onPressed: () {},
            height: 40,
            borderRadius: 20,
            activeColor: Theme.of(context).canvasColor,
            textColor: Theme.of(context).hintColor,
          )),
        ],
      ),
    );
  }
}
