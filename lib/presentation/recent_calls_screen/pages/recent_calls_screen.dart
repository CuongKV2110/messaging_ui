import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/resources/dimensions.dart';

import '../widgets/recent_call_widget.dart';

class RecentCallsScreen extends StatefulWidget {
  const RecentCallsScreen({Key? key}) : super(key: key);

  @override
  _RecentCallsScreenState createState() => _RecentCallsScreenState();
}

class _RecentCallsScreenState extends State<RecentCallsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
// TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text(
          'Recent Calls',
          style: TextStyle(
            color: AppColors.text_primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: AppColors.text_secondary,
          ),
          SizedBox(
            width: 27,
          )
        ],
      ),
      body: _buildRecentCall(),
    );
  }

  Widget _buildRecentCall() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const RecentCallWidget();
        });
  }
}
