import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Create a new category',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const Expanded(
              flex: 3,
              child: SizedBox(
                height: 26,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.blue1,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            Expanded(
              child: Container(
                width: 61,
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.blue1,
                ),
                child: const Center(
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          'Suggested category',
          style: TextStyle(
            color: AppColors.text_secondary.withOpacity(0.6),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Class',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Blology 1, Mathematics-1A, and 3 others',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Bassed on groups name',
          style: TextStyle(color: AppColors.text_secondary, fontSize: 12),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          'Organizations',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Flyway 2020, Flyway Internal Division, and 2 others',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Based on similiar name and date creations',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Text(
              'Included chats(10)',
              style: TextStyle(
                color: AppColors.text_secondary.withOpacity(0.6),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Text(
              '+ Add chats',
              style: TextStyle(
                color: AppColors.blue1,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
