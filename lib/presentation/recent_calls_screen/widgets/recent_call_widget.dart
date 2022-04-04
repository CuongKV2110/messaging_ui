import 'package:flutter/material.dart';
import 'package:messaging/presentation/recent_calls_screen/pages/call_history_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';

class RecentCallWidget extends StatelessWidget {
  const RecentCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 26, 28),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CallHistoryScreen();
                },
              ),
            );
          },
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/avt7.jpg'),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kylian Mbappé',
                    style: TextStyle(
                      color: AppColors.text_primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.online,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.call_received,
                            color: AppColors.white,
                            size: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text(
                        'April 03, 10:20 AM',
                        style: TextStyle(
                          color: AppColors.text_secondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.videocam,
                color: AppColors.blue1,
              )
            ],
          ),
        ));
  }
}
