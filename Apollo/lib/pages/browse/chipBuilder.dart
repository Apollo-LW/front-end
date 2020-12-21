import 'package:flutter/material.dart';

class FChipBuilder extends StatefulWidget {
  String label;
  FChipBuilder({this.label});
  @override
  _FChipBuilderState createState() => _FChipBuilderState(label: label);
}

class _FChipBuilderState extends State<FChipBuilder> {
  bool isSelected = false;
  String label;
  _FChipBuilderState({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: FilterChip(
        label: Text('$label'),
        selected: isSelected,
        onSelected: (value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
    );
  }
}
