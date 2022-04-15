import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:messaging/presentation/recent_chat_screen/pages/recent_chat_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/settings_screen/pages/settings_screen.dart';
import '../../recent_calls_screen/pages/recent_calls_screen.dart';
import '../widgets/build_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          controller: _controller,
          children: const [
            BuildHomeScreen(),
            RecentChatScreen(),
            RecentCallsScreen(),
            SettingsScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.blue1,
          currentIndex: _currentIndex,
          onTap: (int index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.chatbubble_ellipses_outline,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.time_outline,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.call_outline,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.person_circle_outline,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
