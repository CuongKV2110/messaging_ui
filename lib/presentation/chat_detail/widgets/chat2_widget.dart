import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/dimensions.dart';

class Chat2Widget extends StatelessWidget {
  String text = 'Yes, Im flying home now and will be back in Liverpool on Thursday';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppDimensions.d60w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blue1,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: Column(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '16:04',
                          style: TextStyle(
                            color: AppColors.white,
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
        const SizedBox(
          width: 8,
        ),
        Stack(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/avt9.jpg'),
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
      ],
    );
  }
}
