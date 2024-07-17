import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  final Function(int)? onTabChange;
  const BottomNav({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      tabMargin: const EdgeInsets.symmetric(vertical: 24),
      color: Colors.grey[600],
      activeColor: Colors.grey[900],
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      haptic: true,
      onTabChange: (value) => onTabChange,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: "Shop",
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: "Cart",
        ),
      ],
    );
  }
}
