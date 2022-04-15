import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:messaging/presentation/chat_detail/pages/chat_info_screen.dart';
import 'package:messaging/presentation/chat_detail/widgets/chat1_widget.dart';
import 'package:messaging/presentation/resources/colors.dart';
import 'package:messaging/presentation/resources/dimensions.dart';
import 'package:open_file/open_file.dart';
import '../widgets/chat4_widget.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  _ChatDetailScreenState createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  FilePickerResult? result;
  PlatformFile? file;
  late bool hide = false;

  void hideImage() {
    setState(() {
      hide = true;
    });
  }

  void pickFiles() async {
    result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    file = result!.files.first;
    setState(() {
      hide = false;
    });
  }

  void viewFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: AppColors.white,
            elevation: 1,
            actions: const [
              Icon(
                Icons.videocam,
                color: AppColors.text_secondary,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.more_vert,
                color: AppColors.text_secondary,
              )
            ],
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.text_secondary,
              ),
            ),
            titleSpacing: 0,
            title: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ChatInfoScreen();
                  }),
                );
              },
              child: _buildAppbar(),
            ),
          ),
          body: _buildBody(),
          bottomNavigationBar: _buildBottomBar(),
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/avt8.jpg'),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              width: 160,
              child: Text(
                'Liverpool Football Club',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.text_primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '13 online, from 28 peoples',
              style: TextStyle(
                color: AppColors.text_secondary,
                fontSize: 12,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Chat1Widget(),
          const SizedBox(height: 16),
          const Chat4Widget(),
          (file == null)
              ? SizedBox(
                  height: 10,
                )
              : ((hide == true)
                  ? SizedBox(
                      height: 10,
                    )
                  : Image.file(
                      File(file!.path.toString()),
                      width: 200,
                      height: 200,
                    ))
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      width: AppDimensions.d100w,
      height: 70,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: AppColors.divider),
        ),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Ionicons.happy_outline,
              color: AppColors.text_primary,
            ),
            const SizedBox(
              width: 23,
            ),
            const SizedBox(
              width: 140,
              height: 60,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Write a message...'),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                pickFiles();
              },
              child: const Icon(
                Icons.attach_file,
                color: AppColors.text_primary,
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            GestureDetector(
              onTap: () {
                hideImage();
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.blue1),
                child: const Icon(
                  Icons.mic,
                  color: AppColors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
