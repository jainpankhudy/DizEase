import 'package:disease_predictor/pages/aboutpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class aboutDizEase extends StatefulWidget {
  aboutDizEase({Key? key}) : super(key: key);

  @override
  State<aboutDizEase> createState() => _aboutDizEaseState();
}

class _aboutDizEaseState extends State<aboutDizEase> {
  @override
  Widget build(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text('About'),
    content: const Text('DizEase® is an app that helps you partially diagnose diseases and recognises the emotions you are feeling.'),
    actions: [
      CupertinoDialogAction(onPressed: () =>  Navigator.pop(context), isDestructiveAction: true, child: const Text('Done'),),
      
      CupertinoDialogAction(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return aboutPage();
      }));

      }, 
      isDestructiveAction: false, child: const Text('Learn More'),),
    ],
  );
  }
}




