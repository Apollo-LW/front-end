import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Apollo/pages/Courses/resourceItem.dart';

// Adapted from reorderable list demo in offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/reorderable_list_demo.dart
class Resources extends StatefulWidget {
  const Resources({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ResourcesState();
  }
}

class _ListItem {
  _ListItem(this.value, {this.checked});
  final String value;
  bool checked;
}

class _ResourcesState extends State<Resources> {
  bool _reverseSort = false;
  static final _items = <String>[
    'Slides',
    'Exams',
    'Assignments',
    'Virtual Classroom',
  ].map((item) => _ListItem(item, checked: false)).toList();

  // Handler called by ReorderableListView onReorder after a list child is
  // dropped into a new position.
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final _ListItem item = _items.removeAt(oldIndex);
      _items.insert(newIdx, item);
    });
  }

  // Handler called when the "sort" button on appbar is clicked.
  void _onSort() {
    setState(() {
      _reverseSort = !_reverseSort;
      _items.sort((_ListItem a, _ListItem b) => _reverseSort
          ? b.value.compareTo(a.value)
          : a.value.compareTo(b.value));
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _appbar = AppBar(
    //   title: const Text('Reorderable list'),
    //   automaticallyImplyLeading: false,
    //   actions: <Widget>[
    //     IconButton(
    //       icon: const Icon(Icons.sort_by_alpha),
    //       tooltip: 'Sort',
    //       onPressed: _onSort,
    //     ),
    //   ],
    // );
    final _listTiles = _items
        .map(
          (item) => Container(
            // width: 00,
            // margin:  EdgeInsets.fromLTRB(10,0,10,0),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0), //(x,y)
                  blurRadius: 0.0,
                ),
              ],
            ),
            key: Key(item.value),
            child: ExpansionTile(
              // initiallyExpanded: true,
              expandedAlignment: Alignment.centerLeft,
              title: Row(
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 10,
                  ),
                  Text(item.value)
                ],
              ),

              children: [
                ResourceItem(),
                ResourceItem(),
                ResourceItem(),
                ResourceItem(),
              ],
            ),
          ),
        )
        .toList();
    return ReorderableListView(
      onReorder: _onReorder,
      children: _listTiles,
    );
  }
}
