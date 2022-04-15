import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

import '../../../data/models/menu_item.dart';
import '../widgets/menu_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
// TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  List<MenuItem> list = [];
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
    list.add(MenuItem(icon: Icons.account_box, name: 'Account'));
    list.add(MenuItem(icon: Icons.notifications, name: 'Notification'));
    list.add(MenuItem(icon: Icons.chat, name: 'Chat settings'));
    list.add(MenuItem(icon: Icons.sd_storage, name: 'Data and storage'));
    list.add(MenuItem(icon: Icons.security, name: 'Privacy and security'));
    list.add(MenuItem(icon: Icons.info, name: 'About'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text(
          'Settings',
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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              buildInfo(),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                height: 1,
                color: AppColors.divider,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 4, 0, 0),
      child: Row(
        children: [
          const SizedBox(
            width: 64,
            height: 64,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avt.jpg'),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Cristiano Ronaldo",
                style: TextStyle(
                  color: AppColors.text_primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 168,
                height: 36,
                child: Text(
                  "Player Manchester United Football Club ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: AppColors.text_secondary,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildMenu() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
                Container(
                  height: 57,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(27, 18, 24, 18),
                    child: Row(
                      children: [
                        Icon(
                          list[index].icon,
                          color: AppColors.blue1,
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Text(
                          list[index].name,
                          style: const TextStyle(
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
                  ),
                ),
                const SizedBox(height: 8),
              ],
            );
          } else {
            return MenuWidget(list[index]);
          }
        });
  }
}
