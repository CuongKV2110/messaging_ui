import 'package:flutter/material.dart';
import 'package:messaging/presentation/category/pages/category_screen.dart';
import 'package:messaging/presentation/home_screen/widgets/pinned_chat_item.dart';
import 'package:messaging/presentation/home_screen/widgets/recent_chats.dart';

import '../../resources/colors.dart';
import '../../resources/dimensions.dart';

class BuildHomeScreen extends StatefulWidget {
  const BuildHomeScreen({Key? key}) : super(key: key);

  @override
  _BuildHomeScreenState createState() => _BuildHomeScreenState();
}

class _BuildHomeScreenState extends State<BuildHomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text(
          'Pinned Chats',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          SizedBox(
            width: 24,
            height: 24,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avt8.jpg'),
            ),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: SizedBox(
          width: 30,
          height: 30,
          child: Image.asset(
            'images/chat2.png',
            color: AppColors.white,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const CategoryScreen();
            }),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildPinnedChats(),
            const SizedBox(
              height: 24,
            ),
            _buildRecentChats(),
          ],
        ),
      ),
    );
  }

  Widget _buildPinnedChats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return const PinnedChatItem();
        },
      ),
    );
  }

  Widget _buildRecentChats() {
    return Container(
      width: AppDimensions.d90w,
      height: 360,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
              color: AppColors.bgr,
              spreadRadius: 6,
              blurRadius: 20,
              offset: Offset(0, 4))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 7.45,
            ),
            Container(
              width: 24,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.text_secondary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Row(
              children: const [
                Text(
                  'Recent Chats',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.text_primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.search)
              ],
            ),
            const Expanded(
              child: RecentChatsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
