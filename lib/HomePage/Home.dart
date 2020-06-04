import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ConstantValues.dart';
import 'RowBuilder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'COVID 19',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: font,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0, 10.0, 0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Lets fight',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: font,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'against Corona',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: font,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Image.asset('images/home/fight.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'All you need to know about Covid 19',
                  style: TextStyle(
                    fontFamily: font,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RowBuilder(
                  image: 'images/home/symptoms.jpg',
                  text1: 'Symptoms',
                  text2: 'When to consult Doctor?',
                  action: () {
                    setState(() {
                      Navigator.pushNamed(context, '/symptoms');
                    });
                  },
                ),
                SizedBox(
                  child: Divider(
                    thickness: 2,
                  ),
                  height: 50,
                  width: 100,
                ),
                RowBuilder(
                  image: 'images/home/prevention.jpg',
                  text1: 'Prevention',
                  text2: 'How to prevent it?',
                  action: () {
                    setState(() {
                      Navigator.pushNamed(context, '/prevention');
                    });
                  },
                ),
                SizedBox(
                  child: Divider(
                    thickness: 2,
                  ),
                  height: 50,
                  width: 100,
                ),
                RowBuilder(
                  image: 'images/home/experts.jpg',
                  text1: 'Advice',
                  text2: 'What experts say?',
                  action: () {
                    setState(() {
                      Navigator.pushNamed(context, '/symptoms');
                    });
                  },
                ),
                SizedBox(
                  child: Divider(
                    thickness: 2,
                  ),
                  height: 50,
                  width: 100,
                ),
                RowBuilder(
                  image: 'images/home/cases.jpg',
                  text1: 'Cases update',
                  text2: 'Number of people affected',
                  action: () {
                    setState(() {
                      Navigator.pushNamed(context, '/symptoms');
                    });
                  },
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
    );
  }
}
