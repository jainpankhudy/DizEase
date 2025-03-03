import 'dart:async';
import 'package:disease_predictor/pages/aboutpage.dart';
import 'package:disease_predictor/pages/aboutpage.dart';
import 'package:disease_predictor/pages/diseaseprediction.dart';
import 'package:disease_predictor/pages/emotiondetection.dart';
import 'package:disease_predictor/pages/psychologytest.dart';
import 'package:disease_predictor/screens/homepage.dart';
import 'package:disease_predictor/screens/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_ios/url_launcher_ios.dart';
// import 'package:camera/camera.dart';

// List <CameraDescription>? cameras;
void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  // try{
  // cameras = await availableCameras();
  // } on CameraException catch(e){
  //   print([e.code, e.description]);
  // }

  _sendingMails() async {
  var url = Uri.parse("mailto:parthk0902@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
  Timer(Duration(milliseconds: 500), (() =>runApp(MaterialApp(debugShowCheckedModeBanner: false, home:
  DizEase()))));
  
}

class DizEase extends StatefulWidget {
  DizEase({Key? key}) : super(key: key);

  @override
  State<DizEase> createState() => _DizEaseState();
}

class _DizEaseState extends State<DizEase> {

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return signIn();
    // return aboutPage();
  }
}