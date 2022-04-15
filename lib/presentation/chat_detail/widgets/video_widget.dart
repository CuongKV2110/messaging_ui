import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:messaging/presentation/resources/colors.dart';

class VideoWidget extends StatelessWidget {
  String img1 = 'https://static.bongda24h.vn/uploaded/12/11761_2.jpg';
  String img2 =
      'https://i2-prod.manchestereveningnews.co.uk/sport/football/article23388183.ece/ALTERNATES/s1200c/0_GettyImages-1384570281.jpg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 120,
                height: 120,
                child: CachedNetworkImage(
                  imageUrl: index % 2 == 0 ? img1 : img2,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 6,
                right: 6,
                child: Container(
                  width: 40,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      '3:12',
                      style: TextStyle(color: AppColors.white, fontSize: 12),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
