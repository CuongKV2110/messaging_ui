import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:messaging/presentation/resources/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: GestureDetector(
        child: const Icon(
          Ionicons.search_outline,
          color: AppColors.black,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
