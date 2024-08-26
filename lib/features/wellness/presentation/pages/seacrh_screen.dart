import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:payung_pribadi_clone/core/common/widget/input_text.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';
import 'package:payung_pribadi_clone/features/wellness/presentation/bloc/wellness_bloc.dart';

class SeacrhScreen extends StatelessWidget {
  const SeacrhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return BlocBuilder<WellnessBloc, WellnessState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height(16),
                Text(
                  "Cari Kebutuhanmu",
                  style: AppFont.semibold16
                      .copyWith(color: Theme.of(context).indicatorColor),
                ),
                height(16),
                InputText(
                  hintText: "Cari di sini..",
                  controller: searchController,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                height(16),
                Text(
                  "Paling Sering Dicari",
                  style: AppFont.semibold16
                      .copyWith(color: Theme.of(context).indicatorColor),
                ),
                height(16),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: AppFont.medium14.copyWith(
                                    color: Theme.of(context).indicatorColor),
                              ),
                              height(8),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id_ID',
                                        symbol: "Rp. ",
                                        decimalDigits: 0)
                                    .format(state.listWellness[index]['price']),
                                style: AppFont.medium14.copyWith(
                                    color: Theme.of(context).indicatorColor),
                              )
                            ],
                          ))),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
