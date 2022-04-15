import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class UserChatWidget extends StatelessWidget {
  const UserChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/avt4.jpg'),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 2,
                                color: AppColors.white,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Kai Havertz',
                        style: TextStyle(
                          color: AppColors.text_primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '124 friends mutual',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.text_secondary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
