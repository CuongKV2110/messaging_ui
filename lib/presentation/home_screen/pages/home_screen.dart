import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:messaging/presentation/recent_calls_screen/pages/recent_calls_screen.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/settings_screen/pages/settings_screen.dart';
import 'package:messaging/presentation/widgets/avatar_widget.dart';

import '../../category/pages/category_screen.dart';
import '../../widgets/search_widget.dart';
import '../widgets/build_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onTapScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String title = '';
    if (_selectedIndex == 0) {
      title = 'Pinned Chats';
    }

    if (_selectedIndex == 1) {
      title = 'Recent Chats';
    }

    if (_selectedIndex == 2) {
      title = 'Recent Calls';
    }

    if (_selectedIndex == 3) {
      title = 'Settings';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(color: AppColors.black),
        ),
        actions: [
          buildActions(),
        ],
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const CategoryScreen();
                  }),
                );
              },
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  'images/chat2.png',
                  color: AppColors.white,
                ),
              ),
            )
          : (_selectedIndex == 3
              ? Visibility(
                  visible: false,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add_call),
                  ),
                )
              : FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add_call),
                )),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.blue1,
        onTap: (int index) {
          _onTapScreen(index);
        },
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.chatbubble,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Ionicons.time,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Ionicons.call,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.person_circle,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_selectedIndex == 0) {
      return const BuildHomeScreen();
    } else if (_selectedIndex == 1) {
      return const Text('A');
    } else if (_selectedIndex == 2) {
      return const RecentCallsScreen();
    } else {
      return const SettingsScreen();
    }
  }

  Widget buildActions() {
    if (_selectedIndex == 0) {
      return const AvatarWidget();
    }
    return const SearchWidget();
  }
}
