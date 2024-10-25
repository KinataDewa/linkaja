import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:linkaja_clone/core/textstyle.dart';

class OverviewBonusBalance extends StatelessWidget {
  final int bonusBalance;
  const OverviewBonusBalance({
    super.key,
    required this.bonusBalance,
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
              'Bonus Balance',
              style: regularTS.copyWith(fontSize: 12),
            ),

            const SizedBox(height: 8),

            // Icon with Balance
            Row(
              children: [
                const Icon(
                  IconsaxPlusBold.coin_1,
                  size: 20,
                ),
                const SizedBox(width: 6),
                Text(
                  '$bonusBalance',
                  style: mediumTS,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
