import 'package:disease_predictor/pages/options.dart';
import 'package:disease_predictor/pages/symptoms.dart';
import 'package:disease_predictor/pages/aboutpagedialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiseasePrediction extends StatefulWidget {
  DiseasePrediction({Key? key}) : super(key: key);

  @override
  State<DiseasePrediction> createState() => _DiseasePredictionState();
}

class _DiseasePredictionState extends State<DiseasePrediction> {
  bool isLoading = true;
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
                  IconButton(onPressed: (){
                    showCupertinoDialog(context: context,
                    builder: (_)=> aboutDizEase(),
                    barrierDismissible: false
                    );
                  }, icon: const Icon(CupertinoIcons.question, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent,),
                  // LoadingAnimationWidget.bouncingBall(color: Color.fromARGB(255, 199, 199, 204), size: 40),
                  // LoadingAnimationWidget.flickr(leftDotColor: Color.fromARGB(255, 255, 59, 48), rightDotColor: Color.fromARGB(255, 28, 28, 30), size: 30 ),
                  // Row(
                  //   children: [
                  //     // LoadingAnimationWidget.threeRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 15),
                  //     // LoadingAnimationWidget.horizontalRotatingDots(color: Color.fromARGB(254, 0, 123, 255), size: 20),
                  //     // const CupertinoActivityIndicator(),
                  //     // Container(width: 7,),
                  //     // const Text('Loading Data', style: TextStyle(fontFamily: 'SFProM', color: Color.fromARGB(255, 28, 28, 32), fontSize: 15),)
                  //   ],
                  // ),
                  IconButton(onPressed: (){
                    showBottomSheet(context: context,
                    builder: (_) => optionsBox());
                  }, icon: const Icon(CupertinoIcons.ellipsis_circle, color: Color.fromARGB(255, 0, 122, 255),), splashColor: Colors.transparent, highlightColor: Colors.transparent),
                  // OptionsMenu(),
                  // CupertinoActivityIndicator(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: const[
                  Text('Disease Predictor', style: TextStyle(fontFamily: 'SFPro', fontSize: 34),),
                ],
              ),
            ),
    
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0, right: 10, top: 8, bottom: 10),
            //   child: Container(
            //     // color: Colors.red,
            //     width: double.infinity,
                
            //     child: const CupertinoSearchTextField(placeholder: 'Search for symptoms',)),
            // ),
    
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
            //           child: Text('Filters', style: TextStyle(fontFamily: 'SFProM', fontSize: 17, color: Color.fromARGB(255, 0, 122, 255) ),),
                    // )
                  // ],
                // ),
                // ),
            // ),
    
            Container(
            height: 0.5,
            width: double.infinity,
            color: Color.fromARGB(255, 199, 199, 207),
    
            ),
    
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.4,
              child: Stack(
                children: [WebView(
                  initialUrl: 'http://172.25.188.175:8502',
                  javascriptMode: JavascriptMode.unrestricted,
                  zoomEnabled: false,
                  onPageFinished: (url) {
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
                isLoading?Container(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CupertinoActivityIndicator(),
              SizedBox(width: 7,),
              Text('Loading Model', style: TextStyle(fontFamily: 'SFProM', color: Color.fromARGB(255, 28, 28, 32), fontSize: 15),)
            ],
          ),
        ):Container(),
                
                ]
              ),
            )
    
    
          ]),
        );
  }
}