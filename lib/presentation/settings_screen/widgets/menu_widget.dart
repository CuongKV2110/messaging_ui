import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:messaging/data/models/menu_item.dart';

import '../../resources/colors.dart';

class MenuWidget extends StatelessWidget {
  MenuItem item;
  bool isSwitched = false;

  MenuWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 57,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 18, 24, 18),
            child: Row(
              children: [
                Icon(
                  item.icon,
                  color: AppColors.blue1,
                ),
                const SizedBox(
                  width: 19,
                ),
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Ionicons.chevron_forward,
                  color: AppColors.text_secondary,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
