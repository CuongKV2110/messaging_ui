import 'package:flutter/cupertino.dart';

import '../../home_screen/widgets/chat_item_widget.dart';
import '../../home_screen/widgets/personal_widget.dart';
import '../../resources/colors.dart';

class RecentChatWidget extends StatefulWidget {
  const RecentChatWidget({Key? key}) : super(key: key);

  @override
  _RecentChatWidgetState createState() => _RecentChatWidgetState();
}

class _RecentChatWidgetState extends State<RecentChatWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildItem(0, "All chats"),
            _buildItem(1, "Personal"),
            _buildItem(2, "Work"),
            _buildItem(3, "Settings"),
            const Spacer(),
          ],
        ),
        _buildContent(_currentIndex)
      ],
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
      return Expanded(
        child: ChatItemWidget(),
      );
    }
    if (index == 1) {
      return Expanded(
        child: PersonalWidget(),
      );
    }
    if (index == 2) {
      return const Expanded(child: Text('Hello2'));
    } else {
      return const Expanded(child: Text('Hello3'));
    }
  }
}
