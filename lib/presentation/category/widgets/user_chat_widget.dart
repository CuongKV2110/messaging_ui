import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/presentation/resources/colors.dart';

class UserChatWidget extends StatelessWidget {
  const UserChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 9, 0),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 12, 0, 12),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('images/avt.jpg'),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: AppColors.yellow,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.white,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        'Bernardo Silva',
                        style: TextStyle(
                          color: AppColors.text_primary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
