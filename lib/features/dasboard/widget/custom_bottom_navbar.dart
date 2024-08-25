import 'package:flutter/material.dart';

import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import 'button_menu.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;
  final bool isExpand;
  final List<Map<String, dynamic>> items;
  const CustomBottomNavBar(
      {super.key,
      this.selectedIndex,
      this.onTap,
      required this.items,
      this.isExpand = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          height(16),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 8,
              ),
              itemCount: isExpand ? items.length : 3,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (onTap != null && index <= 2) {
                        onTap!(index);
                      }
                    },
                    child: ButtonMenu(
                      item: items[index],
                      isSelected: selectedIndex == index,
                    ),
                  ))
        ],
      ),
    );
  }
}
