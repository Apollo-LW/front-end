import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';

class AppDropdown<T> extends StatelessWidget {
  AppDropdown(
      {@required this.value,
      @required this.options,
      @required this.onChanged,
      this.placeholder});
  final T value;
  final List<T> options;
  final Function onChanged;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(),
          child: DropdownButton<T>(
            itemHeight: 70,
            underline: Padding(
              padding: EdgeInsets.only(top: 100),
              child: Container(
                height: 1,
                margin: EdgeInsets.only(top: 30),
                color: Color(0xff82879B),
              ),
            ),
            isExpanded: true,
            hint: placeholder.isNotEmpty
                ? Text("            " + this.placeholder)
                : null,
            value: this.value,
            icon: Icon(
              Icons.arrow_drop_down_circle_outlined,
              size: 20,
            ),
            items: this
                .options
                .map((val) => DropdownMenuItem(
                      child: Text("            " + val.toString()),
                      value: val,
                    ))
                .toList(),
            onChanged: this.onChanged,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 22, right: 11),
          child: Container(
            child: Icon(
              Icons.category,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
