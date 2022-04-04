import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class PersonalWidget extends StatelessWidget {
  const PersonalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/avt5.jpg'),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sergio Ramos',
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
                              'PSG will comeback C1 in 2023. We are stronger',
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
            );
          } else {
            return Container(
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
                      backgroundImage: AssetImage('images/avt6.jpg'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Trent Alexander-Arnold',
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
                            'Liver will win Champions League this year with Jurgen Klopp',
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
                      '9:35',
                      style: TextStyle(
                        color: AppColors.text_time,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        });
  }
}
