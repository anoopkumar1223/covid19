import 'RowBuilder.dart';
import 'package:flutter/material.dart';
import 'package:covid19/HomePage/ConstantValues.dart';

class SymptomsPage extends StatelessWidget {
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
                      'Symptoms',
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
                      'images/home/symptoms.jpg',
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
                    'COVID-19 is a respiratory condition caused by a coronavirus. Some people are infected but don’t notice any symptoms. Here are some of the common symptoms shown by people.',
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
                    image: 'images/Symptoms/fever.jpg',
                    text1: 'Fever',
                    text2: '99% people show this symptom',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/Symptoms/cough.jpg',
                    text1: 'Dry Cough',
                    text2: '59% people show this symptom',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/Symptoms/sneezing.jpg',
                    text1: 'Body aches',
                    text2: '35% people show this symptom',
                  ),
                  SizedBox(
                    child: Divider(
                      thickness: 2,
                    ),
                    height: 50,
                    width: 100,
                  ),
                  RowBuilder(
                    image: 'images/Symptoms/tiredness.jpg',
                    text1: 'Fatigue',
                    text2: '70% people show this symptom',
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
