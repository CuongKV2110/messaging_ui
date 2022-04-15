import 'package:flutter/material.dart';
import 'package:messaging/presentation/chat_detail/widgets/member_widget.dart';
import 'package:messaging/presentation/resources/dimensions.dart';

import '../../resources/colors.dart';

class BookmarksWidget extends StatelessWidget {
  String text1 =
      'The next things we will consider is how to create our kitchen set in our office company';
  String text2 =
      'Pls keep a note that we will take a vacation on next weekend. Make sure you join the every day of year.';
  String text3 =
      'The event will be held in London. Sunday, 26th of April 2020.';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 24, 24, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: AppDimensions.d70w,
                      child: Text(
                        text1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.text_secondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.chevron_right,
                      color: AppColors.text_secondary,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: AppDimensions.d70w,
                      child: Text(
                        text2,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.text_secondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.chevron_right,
                      color: AppColors.text_secondary,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: AppDimensions.d70w,
                      child: Text(
                        text3,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.text_secondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.chevron_right,
                      color: AppColors.text_secondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.pinned_color,
              ),
              child: const Center(
                child: Text(
                  'See more',
                  style: TextStyle(
                    color: AppColors.blue1,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.chat,
                          color: AppColors.blue1,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text('4 Channels'),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.text_secondary,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: AppDimensions.d50h,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: _buildListPeople(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListPeople() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.people_alt_rounded,
                  color: AppColors.blue1,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Text('20 Peoples'),
                const Spacer(),
                Row(
                  children: const [
                    Icon(
                      Icons.person_add_alt,
                      color: AppColors.blue1,
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: AppColors.blue1,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: AppColors.divider,
            ),
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MemberWidget(index);
                })
          ],
        ),
      ),
    );
  }
}
