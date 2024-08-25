import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

class StepperCustom extends StatelessWidget {
  const StepperCustom({super.key, required this.onTap, this.selectedIndex = 0});
  final int selectedIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: selectedIndex,
      activeStepTextColor: Theme.of(context).indicatorColor,
      finishedStepTextColor: Theme.of(context).indicatorColor,
      internalPadding: 0,
      showLoadingAnimation: false,
      lineStyle: LineStyle(
          lineType: LineType.normal,
          lineThickness: 2,
          activeLineColor: Theme.of(context).primaryColor,
          defaultLineColor: Theme.of(context).canvasColor,
          unreachedLineColor: Theme.of(context).canvasColor,
          finishedLineColor: Theme.of(context).primaryColor,
          lineLength: context.width(0.28)),
      stepRadius: 20,
      showStepBorder: false,
      steps: [
        EasyStep(
            customStep: CircleAvatar(
                radius: 20,
                backgroundColor: selectedIndex >= 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).canvasColor,
                child: Text(
                  "1",
                  style: AppFont.medium14.copyWith(
                    color: selectedIndex >= 0
                        ? Theme.of(context).indicatorColor
                        : Theme.of(context).hintColor,
                  ),
                )),
            customTitle: Text(
              "Biodata Diri",
              style: AppFont.medium14.copyWith(
                color: selectedIndex >= 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).hintColor,
              ),
              textAlign: TextAlign.center,
            )),
        EasyStep(
            customStep: CircleAvatar(
                radius: 20,
                backgroundColor: selectedIndex >= 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).canvasColor,
                child: Text(
                  "2",
                  style: AppFont.medium14.copyWith(
                    color: selectedIndex >= 1
                        ? Theme.of(context).indicatorColor
                        : Theme.of(context).hintColor,
                  ),
                )),
            customTitle: Text(
              "Alamat\nPribadi",
              style: AppFont.medium14.copyWith(
                color: selectedIndex >= 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).hintColor,
              ),
              textAlign: TextAlign.center,
            )),
        EasyStep(
            customStep: CircleAvatar(
                radius: 20,
                backgroundColor: selectedIndex >= 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).canvasColor,
                child: Text(
                  "3",
                  style: AppFont.medium14.copyWith(
                    color: selectedIndex >= 2
                        ? Theme.of(context).indicatorColor
                        : Theme.of(context).hintColor,
                  ),
                )),
            customTitle: Text(
              "Informasi\nPerusahaan",
              style: AppFont.medium14.copyWith(
                color: selectedIndex >= 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).hintColor,
              ),
              textAlign: TextAlign.center,
            )),
      ],
      onStepReached: (index) {
        onTap(index);
      },
    );
  }
}
