import 'package:disease_predictor/pages/mlmodel_emo.dart';
import 'package:disease_predictor/pages/selfasstest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:disease_predictor/pages/diseaseprediction.dart';
import 'package:disease_predictor/pages/emotiondetection.dart';
import 'package:disease_predictor/pages/psychologytest.dart';
import 'package:disease_predictor/screens/signin.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ), 
        body: index == 0?DiseasePrediction():index == 1? EmotionDetection():PsychologyTest(),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: index,
          onTap: (i) => setState(() {
            index = i;
          }),
          items: const [
          // BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart_circle_fill)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_favorites_alt_fill), label: 'Disease Prediction',  ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.viewfinder), label: 'Emotion Detection'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_checkmark_fill), label: 'Psychology Test'),
        ])
      );
  }
}