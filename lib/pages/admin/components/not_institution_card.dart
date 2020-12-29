import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

import 'category_tile.dart';

class NotInstitutionCard extends StatelessWidget {
  final bool isChosen;
  final String title;
  NotInstitutionCard(
      {this.isChosen, this.title = " لا, لا تتبع الى جهة معينة"});

  @override
  Widget build(BuildContext context) {
    return CategoryTile(
        icon: Icons.person,
        iconColor: isChosen == null || isChosen == false
            ? Colors.redAccent.shade200
            : Colors.redAccent.shade200.withOpacity(0.9),
        containerColor: isChosen == null || isChosen == false
            ? Colors.grey.shade200
            : Colors.grey.shade200.withOpacity(0.8),
        title: title);
  }
}
