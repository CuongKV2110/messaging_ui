import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  String img_url1 =
      'https://pbs.twimg.com/media/DofA44ZW0AAGtcB?format=jpg&name=large';
  String img_url2 =
      'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F4df79c24-9291-11e8-86ee-e22d14bef8b7.jpg?crop=1413%2C1413%2C555%2C58';
  String img_url3 =
      'https://taarifa.rw/wp-content/uploads/2021/08/al_bayt_stadium01.jpg';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: CachedNetworkImage(
              imageUrl: index % 2 == 0
                  ? img_url1
                  : (index == 1 ? img_url2 : img_url3),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
