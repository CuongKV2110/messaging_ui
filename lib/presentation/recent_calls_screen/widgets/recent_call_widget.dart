import 'package:flutter/material.dart';
import 'package:messaging/presentation/recent_calls_screen/pages/call_history_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';

class RecentCallWidget extends StatelessWidget {
  const RecentCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
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
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/avt7.jpg'),
                    ),
                    Positioned(
                      bottom: -2,
                      right: -1,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.8,
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
          )),
    );
  }
}
