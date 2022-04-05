import 'package:flutter/material.dart';
import 'package:messaging/presentation/chat_detail/pages/chat_detail_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';

class ChatItemWidget extends StatelessWidget {
  ChatItemWidget({Key? key}) : super(key: key);
  String text = 'Hello my friend. Have a nice day. See you again Heello o ajsao dashd  !';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ChatDetailScreen();
                      }),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/avt8.jpg'),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Jurgen Kloop',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.text_primary,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 180,
                              child: Text(
                                'Next week, Livepool will play in Knock-out C1 with Benfica',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.text_secondary,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          '16:04',
                          style: TextStyle(
                            color: AppColors.text_time,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {},
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/avt3.jpg'),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Frenkie de Jong',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.text_primary,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              'See you again in next Friday. Im a bit busy right now asgasudgasdgaua ',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.text_secondary,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        'Yesterday',
                        style: TextStyle(
                          color: AppColors.text_time,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }
}
