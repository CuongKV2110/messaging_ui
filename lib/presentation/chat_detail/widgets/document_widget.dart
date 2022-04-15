import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class DocumentWidget extends StatelessWidget {
  String img1 = 'images/word.png';
  String img2 = 'images/excel.png';
  String img3 = 'images/powerpoint.png';
  String title1 = 'Danh sách đăng ký số áo thi đấu UEFA Champions League 2020';
  String title2 = 'Bảng phân công nhiệm vụ tháng 4/2020 CLB Liverpool';
  String title3 = 'Sơ đồ chiến thuật trận đấu Liverpool vs Real Madrid';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Image.asset(
                      index % 2 == 0 ? img1 : (index == 1 ? img2 : img3),
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(
                        index % 2 == 0
                            ? title1
                            : (index == 1 ? title2 : title3),
                        style: const TextStyle(
                          color: AppColors.text_primary,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_horiz,
                      color: AppColors.text_secondary,
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                )
              ],
            );
          }),
    );
  }
}
