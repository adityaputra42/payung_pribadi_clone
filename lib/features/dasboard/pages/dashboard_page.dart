import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ic.dart';
import 'package:payung_pribadi_clone/features/wellness/presentation/pages/home_screen.dart';
import 'package:payung_pribadi_clone/features/wellness/presentation/pages/seacrh_screen.dart';

import '../bloc/dashboard_bloc.dart';
import '../widget/custom_bottom_navbar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    body(int index) {
      switch (index) {
        case 0:
          return const HomeScreen();
        case 1:
          return const SeacrhScreen();
        case 2:
          return const Center(
            child: Text("3 Screen"),
          );

        default:
          return const HomeScreen();
      }
    }

    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: body(state is DasboardTab ? state.index : 0),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: InkWell(
            onTap: () {
              context.read<DashboardBloc>().add(ChangeExpand(
                    state is DasboardExpand ? !state.isExpand : false,
                  ));
            },
            child: Container(
              width: 48,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(24)),
                  color: Theme.of(context).cardColor),
              child: Iconify(
                state is DasboardExpand && state.isExpand
                    ? Ic.expand_more
                    : Ic.expand_less,
                size: 24,
                color: Theme.of(context).indicatorColor,
              ),
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(
            items: state.listItem,
            isExpand: state is DasboardExpand ? state.isExpand : false,
            onTap: (index) {
              context.read<DashboardBloc>().add(TabChange(index));
            },
            selectedIndex: state is DasboardTab ? state.index : 0,
          ),
        );
      },
    );
  }
}
