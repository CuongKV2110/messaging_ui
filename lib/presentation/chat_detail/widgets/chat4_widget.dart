import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/dimensions.dart';

class Chat4Widget extends StatefulWidget {
  const Chat4Widget({Key? key}) : super(key: key);

  @override
  _Chat4WidgetState createState() => _Chat4WidgetState();
}

class _Chat4WidgetState extends State<Chat4Widget> {
  String text = 'Here we go, i will comeback to Liver on Saturday';
  String text1 =
      'Thank you, but this week I have to go to the gym. Last game I felt like I wasnt 100% physically fit so I need to improve on that';
  String text2 = 'Yepp Sir, Would you like to playing PS5 with me tonight';
  String avt = 'images/avt9.jpg';
  String avt1 = 'images/avt10.jpg';
  String avt2 = 'images/avt6.jpg';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildChatRight(index);
        } else {
          return _buildChatLeft(index);
        }
      },
    );
  }

  Widget _buildChatRight(int index) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildChat(index),
            const SizedBox(
              width: 8,
            ),
            _buildAvatar(index)
          ],
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }

  Widget _buildChatLeft(int index) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildAvatar(index),
            const SizedBox(
              width: 8,
            ),
            _buildChat(index)
          ],
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }

  Widget _buildAvatar(int index) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage(index == 0 ? avt : (index == 1 ? avt1 : avt2)),
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
    );
  }

  Widget _buildChat(int index) {
    return Container(
      width: AppDimensions.d60w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: index == 0 ? AppColors.blue1 : AppColors.pinned_color,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
        child: Column(
          children: [
            Text(
              index == 0 ? text : (index == 1 ? text1 : text2),
              style: TextStyle(
                color: index == 0 ? AppColors.white : AppColors.text_primary,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '16:35',
                  style: TextStyle(
                    color: index == 0 ? AppColors.white : AppColors.text1,
                    fontSize: 12,
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
