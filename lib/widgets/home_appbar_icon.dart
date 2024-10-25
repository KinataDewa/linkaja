import 'package:flutter/material.dart';

class HomeAppbarIcon extends StatelessWidget {
  final IconData icon;
  const HomeAppbarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26),
      ),
      child: Icon(icon, size: 20),
    );
  }
}
