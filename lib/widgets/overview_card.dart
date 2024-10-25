import 'package:flutter/material.dart';
import 'package:linkaja_clone/core/textstyle.dart';
import 'package:linkaja_clone/widgets/overview_bonus_balance.dart';
import 'package:linkaja_clone/widgets/overview_your_balance.dart';

class OverviewCard extends StatelessWidget {
  final String name;
  final int yourBalance;
  final int bonusBalance;
  const OverviewCard({
    super.key,
    required this.name,
    required this.yourBalance,
    required this.bonusBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Colors.red.shade400,
            Colors.red.shade800,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Name
          Text(
            'Hi, $name',
            style: mediumTS.copyWith(color: Colors.white),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              // Your Balance
              OverviewYourBalance(yourBalance: yourBalance),

              const SizedBox(width: 12),

              // Bonus Balance
              OverviewBonusBalance(bonusBalance: bonusBalance),

              const SizedBox(width: 100),
            ],
          )
        ],
      ),
    );
  }
}
