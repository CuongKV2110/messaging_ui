import 'package:flutter/material.dart';
import 'package:messaging/presentation/home_screen/widgets/pinned_chat_item.dart';
import 'package:messaging/presentation/home_screen/widgets/recent_chats.dart';
import 'package:messaging/presentation/resources/dimensions.dart';
import 'package:messaging/presentation/widgets/search_widget.dart';

import '../../resources/colors.dart';

class BuildHomeScreen extends StatelessWidget {
  const BuildHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildPinnedChats(),
        const SizedBox(
          height: 24,
        ),
        _buildRecentChats(),
      ],
    );
  }

  Widget _buildPinnedChats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return const PinnedChatItem();
        },
      ),
    );
  }

  Widget _buildRecentChats() {
    return Container(
      width: AppDimensions.d100w,
      height: AppDimensions.d90h,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
              color: AppColors.bgr,
              spreadRadius: 6,
              blurRadius: 20,
              offset: Offset(0, 4))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 7.45,
            ),
            Container(
              width: 24,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.text_primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Row(
              children: const [
                Text(
                  'Recent Chats',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.text_primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                SearchWidget(),
              ],
            ),
            const RecentChatsWidget(),
          ],
        ),
      ),
    );
  }
}
