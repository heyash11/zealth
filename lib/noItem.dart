import 'package:flutter/cupertino.dart';

class NoItem extends StatefulWidget {
  @override
  _NoItemState createState() => _NoItemState();
}

class _NoItemState extends State<NoItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No Item"),
    );
  }
}
