import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/dimensions.dart';

class Chat1Widget extends StatelessWidget {
  String text =
      'The whole team had a great game today, I would like to thank you. Now everyone, pack your bags and go home to rest. In the next 3 days we will focus on practicing';
  String img_url = 'https://wallpaperaccess.com/full/1790052.jpg';
  String img_url1 =
      'https://vtv1.mediacdn.vn/thumb_w/640/2021/10/18/salah-dang-the-hien-phong-do-rat-cao-o-mua-giai-nay-16345144580841366452519.jpeg';
  String img_url2 =
      'https://image.vtc.vn/resize/th/upload/2020/01/24/alexander%20arnold-19371772.jpg';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/avt8.jpg'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
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
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppDimensions.d60w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.pinned_color,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Jurgen Klopp',
                          style: TextStyle(
                            color: AppColors.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "admin",
                          style: TextStyle(
                            color: AppColors.text1,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Text(
                        text,
                        style: const TextStyle(
                          color: AppColors.text_primary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '16:04',
                          style: TextStyle(
                            color: AppColors.text1,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                imageUrl: img_url,
                fit: BoxFit.cover,
                width: 204,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                    imageUrl: img_url1,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                    imageUrl: img_url2,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
