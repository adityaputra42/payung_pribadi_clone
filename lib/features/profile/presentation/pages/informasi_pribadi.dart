import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/pages/components/alamat_pribadi_form.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/pages/components/biodata_diri.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/pages/components/informasi_perusahaan_form.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/widget/stepper_custom.dart';

import '../../../../core/utils/widget_helper.dart';
import '../bloc/profile_bloc.dart';

class InformasiPribadi extends StatelessWidget {
  const InformasiPribadi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: WidgetHelper.appBar(
              context: context,
              title: 'Informasi Pribadi',
              onTap: () {
                context.read<ProfileBloc>().add(const TabChange(0));
                context.pop();
              }),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                StepperCustom(
                    selectedIndex: state is TabInformasiDiri ? state.index : 0,
                    onTap: (index) {
                      context.read<ProfileBloc>().add(TabChange(index));
                    }),
                height(16),
                Expanded(
                    child: formInformasiDiri(
                  state is TabInformasiDiri ? state.index : 0,
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget formInformasiDiri(int index) {
  switch (index) {
    case 0:
      return const BiodataDiriForm();
    case 1:
      return const AlamatPribadiForm();
    case 2:
      return const InformasiPerusahaanForm();

    default:
      return const BiodataDiriForm();
  }
}
