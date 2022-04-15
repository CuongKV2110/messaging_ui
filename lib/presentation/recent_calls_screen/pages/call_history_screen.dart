import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.white,
          child: Column(
            children: [
              _buildInfo(),
              const Divider(
                height: 1,
                color: AppColors.divider,
              ),
              _buildHistoryCalls(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 26, 16),
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
            children: const [
              Text(
                'Call History',
                style: TextStyle(
                  color: AppColors.text_secondary,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Kylian Mbappe",
                style: TextStyle(
                  color: AppColors.text_primary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryCalls() {
    return Expanded(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 16,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(17, 16, 19, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index % 2 == 0 ? AppColors.online : AppColors.red,
                    ),
                    child: Center(
                      child: Icon(
                        index % 2 == 0 ? Icons.call_received : Icons.call_made,
                        color: AppColors.white,
                        size: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        index % 2 == 0
                            ? 'Yesterday, 8:52, AM'
                            : '2 days ago, 4:28 PM',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.text_primary,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            '4 minutes',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.text_secondary,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '13.5 MB',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.text_secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    index % 2 == 0 ? Icons.call : Icons.videocam,
                    color: AppColors.blue1,
                    size: 26,
                  )
                ],
              ),
            );
          }),
    );
  }
}
