import 'package:flutter/material.dart';
import 'package:messaging/presentation/chat_detail/pages/chat_detail_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';

class ChatItemWidget extends StatelessWidget {
  String img1 = 'images/avt3.jpg';
  String player1 = 'Frenkie De Jong';
  String title1 = 'Barca is a famous football club in the world';
  String img2 = 'images/avt5.jpg';
  String player2 = 'Sergio Ramos';
  String title2 = 'PSG will comeback to UEFA C1 2023';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
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
                        return const ChatDetailScreen();
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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ChatDetailScreen();
                  }),
                );
              },
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
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(index % 2 == 0 ? img1 : img2),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            index % 2 == 0 ? player1 : player2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.text_primary,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              index % 2 == 0 ? title1 : title2,
                              style: const TextStyle(
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
