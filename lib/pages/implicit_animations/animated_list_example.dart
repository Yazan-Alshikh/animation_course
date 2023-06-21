import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final _listKey = GlobalKey<AnimatedListState>();
  List<String> _list = [];

  _addItem() {
    setState(() {
      _list.insert(0, "New Item ${_list.length.toString()}");
      _listKey.currentState!
          .insertItem(0, duration: const Duration(milliseconds: 500));
    });
  }

  _removeItem(int index) {
    setState(() {
      String removeItems = _list[index];
      _list.removeAt(index);
      _listKey.currentState!
          .removeItem(index, duration: const Duration(milliseconds: 500),
              (context, Animation<double> animation) {
        return ListTile(
          title: Text(removeItems),
          textColor: Colors.red,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List Example"),
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: (context, index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Container(
              color: Colors.amber,
              child: ListTile(
                title: Text(_list[index]),
                trailing: IconButton(
                    onPressed: () {
                      _removeItem(index);
                    },
                    icon: const Icon(Icons.delete_forever)),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addItem, child: const Icon(Icons.add)),
    );
  }
}
