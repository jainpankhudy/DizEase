import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class mlModel extends StatefulWidget {
  const mlModel({Key? key}) : super(key: key);

  @override
  State<mlModel> createState() => _mlModelState();
}

class _mlModelState extends State<mlModel> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width/1.5,
      // height: MediaQuery.of(context).size.height/30,
      // color: Colors.amber,
      child: Stack(
        children: [
          WebView(
          zoomEnabled: false,
          // initialUrl: 'https://docs.google.com/forms/d/e/1FAIpQLSdNDyU4ifhWAB7GlH-SbD6QxY3sOdIQ1KwA6t4PE0nKv9VYKw/viewform',
          initialUrl: 'http://172.25.188.175:8501/',
          // javascriptMode: JavascriptMode.unrestricted,
          javascriptMode: JavascriptMode.unrestricted,
          gestureNavigationEnabled: false,
          backgroundColor: Colors.white,
          // onWebViewCreated: ((controller) {
          //   controller.evaluateJavascript("document.getElementsByClassName('css-1fv8s86 e16nr0p33').style.display='none';");
          // }),
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
    );;
  }
}