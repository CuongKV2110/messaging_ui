import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/chat_detail/widgets/bookmarks_widget.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/resources/dimensions.dart';

class ChatInfoScreen extends StatefulWidget {
  const ChatInfoScreen({Key? key}) : super(key: key);

  @override
  _ChatInfoScreenState createState() => _ChatInfoScreenState();
}

class _ChatInfoScreenState extends State<ChatInfoScreen> {
  int _currentIndex = 0;
  bool isSwitched = false;
  String img_url =
      'https://vtv1.mediacdn.vn/thumb_w/640/2021/9/23/cac-ong-chu-nguoi-my-cua-liverpool-da-giu-lai-san-anfield-thay-vi-dau-tu-xay-san-moi-16323328097921314008151.jpg';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            _buildInfo(),
            const Divider(
              color: AppColors.divider,
            ),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(200, 200),
              bottomLeft: Radius.elliptical(200, 200)),
          child: CachedNetworkImage(
            imageUrl: img_url,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(19, 0, 26, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.chevron_left,
                color: AppColors.text_secondary,
              ),
              Text(
                'Liverpool Football Club',
                style: TextStyle(
                  color: AppColors.text_primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: AppColors.text_secondary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(34, 16, 44, 8),
          child: Row(
            children: const [
              Icon(Icons.info_outline),
              SizedBox(
                width: 18,
              ),
              Flexible(
                child: Text(
                  'We are fullsnack designers, yes. From food, for food, by food !',
                  style: TextStyle(
                    color: AppColors.text_secondary,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 19, 32, 20),
          child: Row(
            children: [
              const Icon(Icons.notifications_none_outlined),
              const SizedBox(
                width: 18,
              ),
              const Text(
                'Notifications',
                style: TextStyle(
                  color: AppColors.text_secondary,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: AppDimensions.d100w,
      height: AppDimensions.d96h,
      child: Column(
        children: [
          Container(
            height: 50,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                _buildItem(0, Icons.star_border_outlined, "Bookmarks"),
                _buildItem(1, Icons.image_outlined, "Images"),
                _buildItem(2, Icons.videocam_outlined, "Videos"),
                _buildItem(3, Icons.library_books_outlined, "Documents"),
              ],
            ),
          ),
          _buildContent(_currentIndex)
        ],
      ),
    );
  }

  Widget _buildItem(int index, IconData icon, String text) {
    bool active = _currentIndex == index;
    return GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Center(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: active ? AppColors.blue1 : AppColors.text_secondary,
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 12,
                      color:
                          active ? AppColors.blue1 : AppColors.text_secondary),
                ),
              ],
            ),
          )),
        ));
  }

  Widget _buildContent(int index) {
    if (index == 0) {
      return Expanded(
        child: BookmarksWidget(),
      );
    }
    if (index == 1) {
      return const Expanded(
        child: Text('V'),
      );
    }
    if (index == 2) {
      return const Expanded(child: Text('Hello2'));
    } else {
      return const Expanded(child: Text('Hello3'));
    }
  }
}
