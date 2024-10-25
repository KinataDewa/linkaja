import 'package:flutter/material.dart';
import 'package:linkaja_clone/core/textstyle.dart';

class HomeActionMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomeActionMenu({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Icon
        Icon(
          icon,
          size: 28,
        ),

        const SizedBox(height: 4),

        // Title
        Text(
          title,
          style: regularTS.copyWith(fontSize: 10),
        ),
      ],
    );
  }
}
