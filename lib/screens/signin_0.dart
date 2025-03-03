import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   toolbarHeight: 0,
      // ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        // color: Color.fromARGB(255, 255, 255, 255),
        decoration: const BoxDecoration(
        color: Colors.black,
          image: DecorationImage(image: AssetImage('images/people.jpeg'), fit: BoxFit.cover)
        ),
        child: 
        Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              // color: const Color.fromARGB(67, 33, 149, 243),
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('images/people.jpeg'),
              //     fit: BoxFit.cover
              //   )
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  // Container(height: 50,),
                  Text('DisEase', style: TextStyle(
                    fontFamily: 'Molle',
                    fontSize: 70,
                    color: Color.fromARGB(255, 236, 236, 232)
                    ),
                    ),
                ],
              ),
              ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                elevation: 100,
                // color: Color.fromARGB(255, 255, 255, 255),
                color: Colors.transparent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height/2 - 40,
                  width: MediaQuery.of(context).size.width,
              
                  decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  // color: Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                  ),
              
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}