import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:linkaja_clone/widgets/home_action_menu.dart';
import 'package:linkaja_clone/widgets/home_appbar_icon.dart';
import 'package:linkaja_clone/widgets/home_feature_menu.dart';
import 'package:linkaja_clone/widgets/overview_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          // Appbar
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Logo LinkAja
                Image.asset(
                  'assets/logo.png',
                  height: 40,
                  width: 40,
                ),

                const Spacer(),

                // Icon Heart
                const HomeAppbarIcon(
                  icon: IconsaxPlusLinear.heart,
                ),

                const SizedBox(width: 8),

                // Icon FAQ
                const HomeAppbarIcon(
                  icon: IconsaxPlusLinear.message,
                ),
              ],
            ),
          ),

          // Overview Card
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: OverviewCard(
              name: 'Kinata Dewa Ariandi',
              yourBalance: 5000000,
              bonusBalance: 100,
            ),
          ),

          const SizedBox(height: 16),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeActionMenu(
                  icon: IconsaxPlusLinear.card_add,
                  title: 'Top Up',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.card_remove,
                  title: 'Cash Out',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.document_normal,
                  title: 'Send Money',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.category,
                  title: 'See All',
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.call,
                  title: 'Pulsa/Data',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.electricity,
                  title: 'Electricity',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.wifi_square,
                  title: 'Cable TV & Internet',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.card,
                  title: 'Kartu Uang Elektronik',
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.teacher,
                  title: 'School',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.card_pos,
                  title: 'Infaq',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.money_send,
                  title: 'Other Donations',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.more,
                  title: 'More',
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          CarouselSlider(
            items: const [
              CarouselContent(
                color: Colors.redAccent,
              ),
              CarouselContent(
                color: Colors.blueAccent,
              ),
              CarouselContent(
                color: Colors.greenAccent,
              ),
            ],
            options: CarouselOptions(
              height: 150,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselContent extends StatelessWidget {
  final Color color;
  const CarouselContent({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: MediaQuery.of(context).size.width - 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
