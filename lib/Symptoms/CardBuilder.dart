import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19/HomePage/ConstantValues.dart';

class CardBuilder extends StatefulWidget {
  final String image;
  final String text1;
  final String text2;

  CardBuilder(
      {@required this.image, @required this.text1, @required this.text2});

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
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                      fontFamily: font,
                      fontSize: 18,
                      wordSpacing: 1,
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
        width: double.infinity,
      ),
    );
  }
}
