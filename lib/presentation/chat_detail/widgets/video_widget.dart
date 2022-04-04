import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:messaging/presentation/resources/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F4df79c24-9291-11e8-86ee-e22d14bef8b7.jpg?crop=1413%2C1413%2C555%2C58',
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 6,
                right: 6,
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
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
