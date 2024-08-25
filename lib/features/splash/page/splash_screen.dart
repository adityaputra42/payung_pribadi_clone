import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:payung_pribadi_clone/core/staticImage/app_image.dart';

import '../bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashBloc>(context).add(SetSplash());
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoadedState) {
            context.goNamed('main');
          }
        },
        builder: (context, state) {
          if (state is SplashLoadingState) {
            return Center(
                child: ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: SvgPicture.asset(
                AppImage.logo,
                width: 100,
                height: 100,
              ),
            ));
          }
          return Container();
        },
      ),
    );
  }
}
