import 'package:disease_predictor/pages/selfasstest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class PsychologyTest extends StatefulWidget {
  PsychologyTest({Key? key}) : super(key: key);

  @override
  State<PsychologyTest> createState() => _PsychologyTestState();
}

class _PsychologyTestState extends State<PsychologyTest> {
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
                  // Row(
                  //   children: [
                  //     // LoadingAnimationWidget.threeRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 15),
                  //     // LoadingAnimationWidget.horizontalRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 20),
                  //     CupertinoActivityIndicator(),
                  //     Container(width: 7,),
                  //     Text('Testing', style: TextStyle(fontFamily: 'SFProM', color: Color.fromARGB(255, 28, 28, 32), fontSize: 15),)
                  //   ],
                  // ),
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
                  Text('Psychology Test', style: TextStyle(fontFamily: 'SFPro', fontSize: 34),),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 12, right: 12),
            //   child: Container(
            //     color: Colors.transparent,
            //     height: MediaQuery.of(context).size.width/9,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Container(
            //           color: Colors.transparent,
            //           width: 100,
            //           height: 20,
            //           child: const Text('Learn more', style: TextStyle(fontFamily: 'SFProM', fontSize: 17, color: Color.fromARGB(255, 0, 122, 255) ),),

            //         )
            //       ],
            //     ),
            //     ),
            // ),

            Container(
            height: 0.5,
            width: double.infinity,
            color: Color.fromARGB(255, 199, 199, 207),
            ),

            SelfTest(),
          
          ]),
        );
    
  }
}