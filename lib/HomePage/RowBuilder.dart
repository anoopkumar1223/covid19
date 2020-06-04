import 'package:flutter/material.dart';
import 'CardBuilder.dart';

class RowBuilder extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Icon icon = Icon(Icons.arrow_right);
  final Function action;

  RowBuilder(
      {@required this.image,
      @required this.text1,
      @required this.text2,
      @required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: Row(
        children: <Widget>[
          CardBuilder(
            image: this.image,
            text1: this.text1,
            text2: this.text2,
            action: this.action,
          ),
        ],
      ),
    );
  }
}
