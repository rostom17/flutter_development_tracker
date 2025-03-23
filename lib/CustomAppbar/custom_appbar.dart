import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.actionIcon,
    required this.logoUrl,
  });

  final String title;
  final IconData leadingIcon;
  final IconData actionIcon;
  final String logoUrl;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurpleAccent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50, width: 50, child: Image.network(logoUrl)),
        ],
      ),
      centerTitle: true,
      leading: Icon(leadingIcon),
      actions: [Icon(actionIcon)],
    );
  }
}
