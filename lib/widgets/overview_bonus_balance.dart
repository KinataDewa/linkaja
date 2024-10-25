import 'package:flutter/material.dart';
import 'package:linkaja_clone/core/textstyle.dart';

class OverviewYourBalance extends StatelessWidget {
  final int yourBalance;
  const OverviewYourBalance({
    super.key,
    required this.yourBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Your Balance',
              style: regularTS.copyWith(fontSize: 12),
            ),

            const SizedBox(height: 8),

            // Balance
            Text(
              'Rp $yourBalance',
              style: mediumTS,
            )
          ],
        ),
      ),
    );
  }
}
