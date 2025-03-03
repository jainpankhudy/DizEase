import 'package:disease_predictor/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  static const gradColors = [
    Colors.white,
    Colors.white
    
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.5,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/people4.jpg'), fit: BoxFit.cover),
                // image: DecorationImage(image: AssetImage('images/heart_gif.gif'), fit: BoxFit.cover),
                // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      // AnimatedTextKit(
                      // isRepeatingAnimation: true,
                      // repeatForever: true,
                      // animatedTexts: [
                      //   ColorizeAnimatedText(
                      //     // speed: ,
                      //     speed: const Duration(milliseconds: 800),
                      //   colors: gradColors,
                      //     'DizEase',
                      //     textStyle: const TextStyle(
                      //   fontFamily: 'Molle',
                      //   fontSize: 70,
                      //   color: Color.fromARGB(255, 245, 243, 212),
                      //   shadows: [
                      //     Shadow(
                      //     offset: Offset(5, 5),
                      //     blurRadius: 3.0,
                      //     color: Color.fromARGB(255, 99, 99, 98)
                      //   )
                      // ]
                      // )
                      //   ),
                      // ],
                      // ),

                      TextLiquidFill(text: 'DizEase',
                      boxWidth: MediaQuery.of(context).size.width,
                      boxHeight: MediaQuery.of(context).size.height/1.5,
                      waveColor: Colors.transparent,

                      boxBackgroundColor: const Color.fromARGB(188, 0, 0, 0),
                      textStyle: const TextStyle(
                        fontSize: 90,
                        fontFamily: 'Molle'
                      ),
                      )


                      
                      
                    
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 255, 255, 255),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height/10,
                        child: AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: [
                            // TypewriterAnimatedText('Welcome to DizEase,\nan all in one app to\nlive a healthy life!',
                            // textStyle: TextStyle(fontFamily: 'CourierPrime', fontSize: 20),
                            // speed: Duration(milliseconds: 100),
                            // ),
                            TypewriterAnimatedText('Hey\nThere!',
                            textStyle: TextStyle(fontFamily: 'PlayFair', fontSize: 25),
                            speed: Duration(milliseconds: 100),
                            ),

                            TypewriterAnimatedText('Welcome to\nDizEase!',
                            textStyle: TextStyle(fontFamily: 'PlayFair', fontSize: 25),
                            speed: Duration(milliseconds: 100),
                            ),

                          ],
                        ),
                      ),
                    ),
                  

                  Container(
                    // color: Color.fromARGB(205, 101, 226, 170),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return HomePage();
                      }));
                          },

                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width/1.4,
                            decoration: BoxDecoration(
                            color: Colors.transparent,
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black, width: 1.5)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Continue to app', style: TextStyle(fontFamily: 'PlayFair', fontSize: 22, color: Colors.black),),
                                Container(height: 3 ,)
                              ],
                            ),
                            ),
                        ),
                        
                      ],
                    ),
                  ),
                  Container(height: 10,)
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}