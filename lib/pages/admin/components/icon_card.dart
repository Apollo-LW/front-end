import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

import 'category_tile.dart';

class IconCard extends StatelessWidget {
  final bool isChosen;
  final IconData icon;
  final String title;
  IconCard(
      {this.isChosen,
      this.icon = Icons.school,
      this.title = " نعم, تتبع الى جهة معينة"});

  @override
  Widget build(BuildContext context) {
    return CategoryTile(
        icon: icon,
        iconColor: isChosen == null || isChosen == false
            ? AppColors.darkBlue
            : AppColors.darkBlue.withOpacity(0.9),
        containerColor: isChosen == null || isChosen == false
            ? Colors.grey.shade200
            : Colors.grey.shade200.withOpacity(0.8),
        title: title);
  }
}
