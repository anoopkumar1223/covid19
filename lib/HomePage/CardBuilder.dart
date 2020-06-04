import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ConstantValues.dart';

class CardBuilder extends StatefulWidget {
  final String image;
  final String text1;
  final String text2;
  final Function action;

  CardBuilder(
      {@required this.image,
      @required this.text1,
      @required this.text2,
      @required this.action});

  @override
  _CardBuilderState createState() => _CardBuilderState();
}

class _CardBuilderState extends State<CardBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                widget.image,
                height: 250,
                width: 200,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: font,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                      fontFamily: font,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(90, 40, 0, 0),
                    child: FloatingActionButton(
                      heroTag: null,
                      child: Icon(Icons.arrow_forward),
                      tooltip: 'Know more',
                      backgroundColor: Colors.black54,
                      elevation: 10,
                      onPressed: (() {
                        widget.action();
                      }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: containerColor,
          boxShadow: [
            new BoxShadow(
              color: Colors.black38,
              blurRadius: 20.0,
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
