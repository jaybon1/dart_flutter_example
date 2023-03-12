import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 200,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            _buildDrawerItem(Icons.person, "내 정보"),
            _buildDrawerItem(Icons.person, "내 게시글 보기"),
            _buildDrawerItem(Icons.settings, "설정"),
          ],
        ),
      ),
    );
  }
}

Widget _buildDrawerItem(IconData iconData, String content) {
  return Container(
    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 5.0),
          Text(content),
        ],
      ),
    ),
  );
}