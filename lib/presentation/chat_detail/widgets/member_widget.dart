import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class MemberWidget extends StatelessWidget {
  late int index;

  MemberWidget(this.index);

  String img1 = 'images/avt6.jpg';
  String player1 = 'Trent Alexander-Arnold';
  String img2 = 'images/avt9.jpg';
  String player2 = 'Sadio Mané';
  String img3 = 'images/avt10.jpg';
  String player3 = 'Mohamed Salah';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  index % 2 == 0 ? img1 : (index == 1 ? img2 : img3)),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              index % 2 == 0 ? player1 : (index == 1 ? player2 : player3),
              style: const TextStyle(
                color: AppColors.text_primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Text(
              'Member',
              style: TextStyle(
                color: AppColors.text_secondary,
                fontSize: 12,
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
