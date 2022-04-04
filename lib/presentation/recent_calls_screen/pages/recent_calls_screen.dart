import 'package:flutter/cupertino.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/resources/dimensions.dart';

import '../widgets/recent_call_widget.dart';

class RecentCallsScreen extends StatefulWidget {
  const RecentCallsScreen({Key? key}) : super(key: key);

  @override
  _RecentCallsScreenState createState() => _RecentCallsScreenState();
}

class _RecentCallsScreenState extends State<RecentCallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.d100w,
      height: AppDimensions.d100h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.white,
            AppColors.bgr1,
          ],
        ),
      ),
      child: _buildRecentCall(),
    );
  }

  Widget _buildRecentCall() {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const RecentCallWidget();
        });
  }
}
