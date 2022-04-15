import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  String img_url1 =
      'https://cdnmedia.tinmoi.vn/upload/theanhbtv/2021/10/03/1633234800-2.jpg';
  String img_url2 =
      'https://cdn.bongdaplus.vn/Assets/Media/2019/11/11/41/fabinho1.jpg';
  String img_url3 =
      'http://cdn-img.thethao247.vn/upload/hungtm/2018/04/11/truc-tiep-man-city-vs-liverpool-1h45-ngay-11-41523393465.jpg';
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
