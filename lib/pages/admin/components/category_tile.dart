import 'package:flutter/material.dart';

class CategoryTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final Color containerColor;
  final Color iconColor;
  CategoryTile({this.icon, this.title, this.containerColor, this.iconColor});

  @override
  @override
  _CategoryTileState createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.iconColor,
                fontFamily: 'Domine',
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Icon(
              widget.icon,
              size: 75,
              color: widget.iconColor,
            ),
          ),
        ],
      ),
<<<<<<< HEAD
      height: 200,
      width: MediaQuery.of(context).size.width / 2 - 45,
=======
      height: 150,
      width: MediaQuery.of(context).size.width - 80,
>>>>>>> d1338acb51a84032b01436c185e9dd24554575d1
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(

              // shadow direction: bottom right
              )
        ],
        borderRadius: BorderRadius.circular(12),
        color: widget.containerColor,
      ),
    );
  }
}
