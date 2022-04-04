import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../resources/colors.dart';

class PinnedChatItem extends StatelessWidget {
  const PinnedChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 102,
      decoration: BoxDecoration(
        color: AppColors.pinned_color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.blue1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/avt2.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: AppColors.white,
                          ),
                        ),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.online,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                const Flexible(
                  child: Text(
                    'Robert Lewandowski',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.text_primary,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                Icon(
                  Ionicons.arrow_undo,
                  color: AppColors.text_secondary,
                  size: 12,
                ),
                SizedBox(
                  width: 9,
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Thank you for my gif. Im very happy ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
