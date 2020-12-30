import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

import 'category_tile.dart';

class IconCard extends StatelessWidget {
  final bool isChosen;
  final IconData icon;
  final String title;
<<<<<<< HEAD
  IconCard(
      {this.isChosen,
      this.icon = Icons.school,
      this.title = " نعم, تتبع الى جهة معينة"});
=======
  final Color color;
  IconCard(
      {this.isChosen,
      this.icon = Icons.school,
      this.title = " نعم, تتبع الى جهة معينة",
      this.color = Colors.blueAccent});
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1

  @override
  Widget build(BuildContext context) {
    return CategoryTile(
        icon: icon,
        iconColor: isChosen == null || isChosen == false
<<<<<<< HEAD
            ? AppColors.darkBlue
            : AppColors.darkBlue.withOpacity(0.9),
=======
            ? color
            : color.withOpacity(0.9),
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
        containerColor: isChosen == null || isChosen == false
            ? Colors.grey.shade200
            : Colors.grey.shade200.withOpacity(0.8),
        title: title);
  }
}
