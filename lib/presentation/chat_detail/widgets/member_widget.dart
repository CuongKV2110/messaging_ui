import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/avt4.jpg'),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "Kai Havertz",
              style: TextStyle(
                color: AppColors.text_primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              'Member',
              style: TextStyle(
                color: AppColors.text_secondary,
                fontSize: 12,
              ),
            )
          ],
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
