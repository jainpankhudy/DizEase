// import 'package:disease_predictor/camera_inp.dart';
// import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:ffi';

import 'package:disease_predictor/pages/mlmodel_emo.dart';
import 'package:disease_predictor/pages/selfasstest.dart';
import 'package:disease_predictor/pages/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:disease_predictor/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:html/parser.dart' as parser;
// import 'package:http/http.dart' as http;
// import 'package:html/dom.dart' as dom;
// import 'package:web_scraper/web_scraper.dart';

// import 'package:tflite/tflite.dart';
// import 'package:tflite/tflite.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';


class EmotionDetection extends StatefulWidget {
  EmotionDetection({Key? key}) : super(key: key);

  @override
  State<EmotionDetection> createState() => _EmotionDetectionState();
}

class _EmotionDetectionState extends State<EmotionDetection> {
  // CameraImage? cameraImage;
  // CameraController? cameraController;
  // String output = '';
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.question, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                  // LoadingAnimationWidget.bouncingBall(color: Color.fromARGB(255, 199, 199, 204), size: 40),
                  // LoadingAnimationWidget.flickr(leftDotColor: Color.fromARGB(255, 255, 59, 48), rightDotColor: Color.fromARGB(255, 28, 28, 30), size: 30 ),
                  Row(
                    children: const [
                      // LoadingAnimationWidget.threeRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 15),
                      // LoadingAnimationWidget.horizontalRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 20),
                      // CupertinoActivityIndicator(),
                      // Container(width: 7,),
                      // Text('Detecting', style: TextStyle(fontFamily: 'SFProM', color: Color.fromARGB(255, 28, 28, 32), fontSize: 15),)
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.ellipsis_circle, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent),
                  // OptionsMenu(),
                  // CupertinoActivityIndicator(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 10),
              child: Row(
                children: const[
                  Text('Emotion Detection', style: TextStyle(fontFamily: 'SFPro', fontSize: 34),),
                ],
              ),
            ),

            Container(
            height: 0.5,
            width: double.infinity,
            color: Color.fromARGB(255, 199, 199, 207),
            ),

            Container(
              // color: Color.fromARGB(255, 223, 223, 223),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 375,
                      height: 275,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      // color: Colors.amber,
                      child: mlModel(),
                      // child: !cameraController!.value.isInitialized?Container():
                      // AspectRatio(aspectRatio: cameraController!.value.aspectRatio,
                      // child: CameraPreview(cameraController!),
                      // ),
                      
                      ),
                  )

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width-30,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black87,
                // color: Color.fromARGB(255, 142, 142, 147),
                // color: Color.fromARGB(255, 242, 242, 247),

                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 5)
                )
                ]

              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 96, 96, 96),
                    // color: Color.fromARGB(255, 242, 242, 247),
                    // color: Color.fromARGB(255, 142, 142, 147),

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.all(2.5),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 55, 48),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                          ),),
                          Padding(padding: const EdgeInsets.all(2.5),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 204, 0),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                          ),),
                          Padding(padding: const EdgeInsets.all(2.5),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 52, 199, 89),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                          ),),
                          // Text(output) 
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text('DizEase®-Emotion_Detection', style: TextStyle(fontFamily: 'SFPro', fontWeight: FontWeight.w100, color: Color.fromARGB(255, 199, 199, 204)),),
                          ) 
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text('App: DizEase®, feature: Emotion Detection', style: TextStyle(fontFamily: 'Menlo', color: Colors.white, fontSize: 11),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: const [
                        Text('Current Emotion: ', style: TextStyle(fontFamily: 'Menlo', color: Colors.white, fontSize: 15),),
                        Text('', style: TextStyle(fontFamily: 'Menlo', color: Colors.white, fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                    child: Row(
                      children:[
                        AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: [
                        TypewriterAnimatedText('Disclaimer:\nThe feature of "Emotion Detction" in the app\nDizEase® works on Machine Learning and maybe\ninaccurate. For any queries, mail us!',
                        textStyle: TextStyle(fontFamily: 'Menlo', color: Colors.white, fontSize: 10),
                        speed: Duration(milliseconds: 100)
                        ),

                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
              )

            // CameraApp()
            // TakePictureScreen(camera: camera)
            



          ]),
        );
  }
}