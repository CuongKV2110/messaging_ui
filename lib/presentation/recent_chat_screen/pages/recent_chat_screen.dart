import 'package:flutter/material.dart';

import '../../home_screen/widgets/recent_chats.dart';
import '../../resources/colors.dart';
import '../../resources/dimensions.dart';
import '../widgets/recent_chat_widget.dart';

class RecentChatScreen extends StatefulWidget {
  const RecentChatScreen({Key? key}) : super(key: key);

  @override
  _RecentChatScreenState createState() => _RecentChatScreenState();
}

class _RecentChatScreenState extends State<RecentChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.d100w,
      height: AppDimensions.d100h,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RecentChatWidget(),
      ),
    );
  }
}
