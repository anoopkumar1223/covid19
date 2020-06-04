import 'package:covid19/Symptoms/RowBuilder.dart';
import 'package:flutter/material.dart';
import 'package:covid19/HomePage/ConstantValues.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                    child: Text(
                      'Prevention',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: font,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Image.asset(
                      'images/home/prevention.jpg',
                      height: 200,
                      width: double.infinity,
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Protect yourself and others around you by knowing the facts and taking appropriate precautions. Follow advice provided by your local public health agency.',
                    style: TextStyle(
                      fontFamily: font,
                      fontSize: 18,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RowBuilder(
                    image: 'images/prevention/home.jpg',
                    text1: 'Stay Home Stay Safe',
                    text2: '',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/prevention/social.jpg',
                    text1: 'Maintain physical distance',
                    text2: '',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/prevention/wash.jpg',
                    text1: 'Wash hands often',
                    text2: '',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/prevention/mask.jpg',
                    text1: 'Always Wear mask',
                    text2: '',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
