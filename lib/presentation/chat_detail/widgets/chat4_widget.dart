import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/dimensions.dart';

class Chat4Widget extends StatelessWidget {
  String text =
      'Thank you, but this week I have to go to the gym. Last game I felt like I wasnt 100% physically fit so I need to improve on that';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/avt10.jpg'),
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
            Container(
              width: AppDimensions.d60w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.pinned_color,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: Column(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: AppColors.text_primary,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '16:35',
                          style: TextStyle(
                            color: AppColors.text1,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
