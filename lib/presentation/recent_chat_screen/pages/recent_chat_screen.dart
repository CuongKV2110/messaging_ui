import 'package:flutter/material.dart';

import '../../home_screen/widgets/recent_chats.dart';
import '../../resources/colors.dart';

class RecentChatScreen extends StatefulWidget {
  const RecentChatScreen({Key? key}) : super(key: key);

  @override
  _RecentChatScreenState createState() => _RecentChatScreenState();
}

class _RecentChatScreenState extends State<RecentChatScreen>
    with AutomaticKeepAliveClientMixin {
  @override
// TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text(
          'Recent Chats',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: AppColors.text_secondary,
          ),
          SizedBox(
            width: 27,
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: RecentChatsWidget(),
      ),
    );
  }
}
