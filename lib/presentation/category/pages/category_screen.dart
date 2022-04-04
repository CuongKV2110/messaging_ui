import 'package:flutter/material.dart';
import 'package:messaging/presentation/category/widgets/user_chat_widget.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/resources/dimensions.dart';

import '../widgets/category_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            width: AppDimensions.d100w,
            height: AppDimensions.d100h,
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 17, 0),
              child: Column(
                children: [
                  Container(
                    width: 24,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.text_primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const CategoryWidget(),
                  SizedBox(
                    height: 12,
                  ),
                  const UserChatWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
