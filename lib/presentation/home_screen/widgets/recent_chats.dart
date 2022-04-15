import 'package:flutter/material.dart';
import 'package:messaging/presentation/category/widgets/user_chat_widget.dart';
import 'package:messaging/presentation/home_screen/widgets/chat_item_widget.dart';
import 'package:messaging/presentation/home_screen/widgets/personal_widget.dart';
import '../../resources/colors.dart';

class RecentChatsWidget extends StatefulWidget {
  const RecentChatsWidget({Key? key}) : super(key: key);

  @override
  _RecentChatsWidgetState createState() => _RecentChatsWidgetState();
}

class _RecentChatsWidgetState extends State<RecentChatsWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 40,
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                _buildItem(0, "All chats"),
                _buildItem(1, "Personal"),
                _buildItem(2, "Work"),
                _buildItem(3, "Settings"),
              ],
            ),
          ),
          _buildContent(_currentIndex)
        ],
      ),
    );
  }

  Widget _buildItem(int index, String text) {
    bool active = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        height: 26,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: active ? AppColors.blue1 : AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  color: active ? AppColors.white : AppColors.text_primary),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(int index) {
    if (index == 0) {
      return ChatItemWidget();
    }
    if (index == 1) {
      return const PersonalWidget();
    }
    if (index == 2) {
      return const UserChatWidget();
    } else {
      return const PersonalWidget();
    }
  }
}
